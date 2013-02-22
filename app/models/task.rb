class Task < ActiveRecord::Base

	attr_accessible :title, :description

	belongs_to	:state
	belongs_to	:priority
	has_many 	:notes

	#self relational code
	has_many 	:task_subtasks
	has_many 	:subtasks, :through => :task_subtasks

	has_one 	:inverse_task_subtasks, :class_name => "TaskSubtask", :foreign_key => "subtask_id"  
  has_one 	:inverse_subtasks, :through => :inverse_task_subtasks, :source => :task 

  def have_subtasks?
  	if subtasks.count > 0
    	return true
    end
    false
  end

end

