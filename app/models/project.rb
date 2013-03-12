class Project < ActiveRecord::Base

	attr_accessible :title, :description, :parent_id

	belongs_to	:state
	belongs_to	:priority
	has_many 	:notes, :through => :project_notes
	has_many	:tasks, :through => :project_tasks



end

