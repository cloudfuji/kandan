class Attachment < ActiveRecord::Base
  belongs_to :channel
  belongs_to :user

  attr_accessible :file

  def url
    file.to_s
  end
end
