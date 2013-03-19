class AddStatusToTasks < ActiveRecord::Migration
  def change
    add_column 	:tasks, :status, :integer
    add_index 	:tasks, :status
  end
end
