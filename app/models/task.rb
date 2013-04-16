class Task < ActiveRecord::Base
  extend Enumerize

  has_ancestry

  attr_accessible :title, :description, :parent_id, :project_id, :status, :priority

  enumerize :status, :in => {
    :created => 0, 
    :working => 1, 
    :waiting => 2, 
    :paused => 3, 
    :stopped => 4, 
    :finished => 5
    }, default: :created, scope: true

  enumerize :priority, :in => {
    :urgent => 0, 
    :highest => 1, 
    :high => 2, 
    :medium => 3, 
    :low => 4, 
    :lowest => 5,
    :no => 6
    }, default: :no, scope: true
  
  belongs_to :project
  has_many :notes

  # #self relational code
  # has_many  :task_subtasks
  # has_many  :subtasks, :through => :task_subtasks

  # has_one   :inverse_task_subtasks, :class_name => "TaskSubtask", :foreign_key => "subtask_id"
  # has_one   :inverse_subtasks, :through => :inverse_task_subtasks, :source => :task

  #scope :having_status, lambda { |status| where(:status => status) }

  def have_subtasks?
    if children.count > 0
      return true
    end
    false
  end

end
