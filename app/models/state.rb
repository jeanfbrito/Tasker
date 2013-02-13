class State < ActiveRecord::Base

	has_many :tasks, :foreign_key => "state_id"

end