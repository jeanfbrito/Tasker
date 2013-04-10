class Document < ActiveRecord::Base

  attr_accessible :attachment_file_name, :attachment, :project_id, :name, :description
  has_attached_file :attachment, :preserve_files => true


end
