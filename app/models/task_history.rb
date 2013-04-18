class TaskHistory < ActiveRecord::Base
  extend Enumerize

  attr_accessible :status, :description, :task_id, :user_id

  enumerize :status, :in => {
    :created => 0, 
    :working => 1, 
    :waiting => 2, 
    :paused => 3, 
    :stopped => 4, 
    :finished => 5
    }, default: :created, scope: true

  belongs_to  :task
  belongs_to  :user

end
