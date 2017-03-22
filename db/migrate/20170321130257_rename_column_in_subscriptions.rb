class RenameColumnInSubscriptions < ActiveRecord::Migration
  def change
  	rename_column :subscriptions, :teacher_id, :course_id 
  end
end
