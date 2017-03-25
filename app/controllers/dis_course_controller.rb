class DisCourseController < ApplicationController
	
	def index
  	
  		@all_courses = Course.all
	
	end

end
