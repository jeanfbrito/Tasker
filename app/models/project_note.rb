class ProjectNote < ActiveRecord::Base

	belongs_to :project  
  belongs_to :note
  
end



