class CreateTaskNotes < ActiveRecord::Migration
  def change
    create_table(:task_notes) do |t|
    	
     	t.integer :task_id
      t.integer :note_id

      t.timestamps
    end
  end
end
