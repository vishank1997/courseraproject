namespace :scrapping do
  desc "It is scrapping the data from Udacity Dev API"
  task scrap: :environment do
    require 'net/http'
    require 'json'

    url = 'https://www.udacity.com/public-api/v0/courses'
    response = Net::HTTP.get(URI.parse(url))
    json_response = JSON.parse(response)
    json_response['courses'].each do |course|
      if (!course['image'].blank? && !course['teaser_video']['youtube_url'].blank?)
        newcourse = Course.new
        if (course['title'].include? 'Android')
          ct = 'Android'
        elsif(course['title'].include? 'Web' || 'web')
          ct = 'Web'
        elsif(course['title'].include? 'Analytics' || 'analytics')
          ct = 'Analytics'
        else
          ct = 'Other'
        end
        #newcourse.category = ct
        #newcourse.key = course['key']
        newcourse.title = course['title']
        newcourse.homepage = course['homepage']
        #newcourse.subtitle = course['subtitle']
        #newcourse.level = course['level']
        newcourse.image = course['image']
        newcourse.banner_image = course['banner_image']
        newcourse.teaser_video = course['teaser_video']['youtube_url']
        newcourse.summary = course['summary']
        #newcourse.short_summay = course['short_summary']
        newcourse.sallybus = course['syllabus']
        newcourse.faq = course['faq']
        newcourse.required_knowledge = course['required_knowledge']
        newcourse.save
      end
    end
  end
end