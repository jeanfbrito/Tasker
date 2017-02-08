class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :state
  belongs_to :priority

  has_many :project_notes
  has_many :notes, :through => :project_notes
  has_many :tasks
  has_many :documents

  validates :title, presence: true

  def have_tasks?
    tasks.count > 0 ? true : false
  end

  def have_documents?
    documents.count > 0 ? true : false
  end
end
