class CreateTasks < ActiveRecord::Migration
  def change
    create_table(:tasks) do |t|
    	
      t.string  :title
      t.text 		:description
      t.date		:due_time
      t.string	:estimated_time
      t.integer	:priority_id
      t.integer	:state_id


      t.timestamps
    end
  end
end
