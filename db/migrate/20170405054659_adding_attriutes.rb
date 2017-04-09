class AddingAttriutes < ActiveRecord::Migration
  def change
  	add_column :lectures, :course_id, :integer
  	add_column :lectures, :video_link, :string
  end
end
