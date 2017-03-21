class AddDescriptionToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :banner_image, :string
    add_column :courses, :required_knowledge, :string
    add_column :courses, :faq, :string
    add_column :courses, :sallybus, :string
  end
end
