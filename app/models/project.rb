class Project < ActiveRecord::Base

  attr_accessible :title, :description, :user_id

  belongs_to  :state
  belongs_to  :priority

  has_many  :project_notes
  has_many  :notes, :through => :project_notes
  
  has_many :tasks

  belongs_to :user

  def have_tasks?
    if tasks.count > 0
      return true
    end
    false
  end

end

