class TeacherAddCourseController < ApplicationController
	def addcourse_get
	end	
	def addcourse
		course = Course.new
		course.title = params[:course_title]
		course.image = params[:course_image]
		course.teaser_video = params[:course_teaser_video]
		course.summary = params[:course_summary]
		course.banner_image = params[:course_banner_image]
		course.required_knowledge = params[:course_required_knowledge]
		course.faq = params[:course_faq]
		course.sallybus = params[:course_sallybus]
		course.homepage = params[:course_homepage]
		course.teacher_id = current_teacher.id
    	course.save!
    	return redirect_to :back
	end

	def displaycourse
		@teacher_courses = Course.where(teacher_id: current_teacher.id)
	end
	
	def enrolledstudents
		course = Course.where(teacher_id: current_teacher.id)
		@subs = Array.new
		@users = Array.new
		count = 0
		while(course[count])
			@subs << Subscription.find_by_course_id(course[count].id)
			#Subscription.where(course_id = course[count].id)
			count = count + 1
		end
	end

	def add_lecture
		course_id = params[:id]
		youtube_link =  params[:youtube_url]
		youtube_link = youtube_link.sub('watch?v=','embed/')
		lecture = Lecture.new
		lecture.video_link = youtube_link
		lecture.course_id = course_id
		lecture.save
		return redirect_to :back
	end	
end