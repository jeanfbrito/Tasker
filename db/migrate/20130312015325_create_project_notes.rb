class CreateProjectNotes < ActiveRecord::Migration
  def change
    create_table(:project_notes) do |t|
    	
     	t.integer :project_id
      t.integer :note_id

      t.timestamps
    end
  end
end
