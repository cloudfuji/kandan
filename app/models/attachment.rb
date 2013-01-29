class Attachment < ActiveRecord::Base
  belongs_to :channel
  belongs_to :user

  attr_accessible :file
  mount_uploader :file, FileUploader

  def url
    file.to_s
  end
end
