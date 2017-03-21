class AddAttributesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :title, :string
    add_column :courses, :image, :string
    add_column :courses, :teaser_video, :string
    add_column :courses, :summary, :string
  end
end
