class Priority < ActiveRecord::Base

	has_many :tasks, :foreign_key => "priority_id"
	
end
