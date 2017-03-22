class CourseController < ApplicationController
   @find

  
  before_action :authenticate_user!




  def index
  	
  	@all_courses = Course.all
 
  end
  

  def single_course
  	
  	@find = params[:id]
  	
  	@courses = Course.find_by_id(@find)

  end 

  def enroll_now
  	user = User.find_by_id(current_user.id)
  	course = Course.find_by_id(params[:course_id])
  	subscription = Subscription.new
    
    subscription.user_id = user.id
  	subscription.teacher_id = course.id
    subscription.save
    return redirect_to "/course/single_course?id=#{course.id}"
  end	
  def unenroll
    user = Use
  end
  

  def single_course
    
    @find = params[:id]
  
    @courses = Course.find_by_id(@find)

  end 

  def enroll_now
    user = User.find_by_id(current_user.id)
    course = Course.find_by_id(params[:course_id])
    subscription = Subscription.new
    subscription.user_id = user.id
    subscription.course_id = course.id
    subscription.save
    return redirect_to "/course/single_course?id=#{course.id}"
  end 
  def unenroll
    user = User.find_by_id(current_user.id)
    course = Course.find_by_id(params[:course_id])
    subscription = Subscription.find_by_user_id(user.id)
    if (subscription.course_id == course.id)
        subscription.delete
    end
    return redirect_to "/course/single_course?id=#{course.id}"
  end
end
