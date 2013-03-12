class CreateProjects < ActiveRecord::Migration
  def change
    create_table(:projects) do |t|
    	
      t.string  :title
      t.text 		:description
      t.date		:deadline
      t.integer	:priority_id
      t.integer	:state_id
      
      t.timestamps
    end
  end
end
