class CreateTasksHistory < ActiveRecord::Migration
	def change
    create_table(:tasks_history) do |t|
      
      t.integer	:task_id
      t.integer	:user_id
      t.text    :description
      t.integer	:status

      t.timestamps
    end
  end
end
