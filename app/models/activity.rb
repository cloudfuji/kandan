class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel

  paginates_per Kandan::Config.options[:per_page]
  validates_presence_of :channel

  def self.save_for_auth_token(auth_token, activity_attributes)
    user = User.find_by_authentication_token auth_token
    return false if not user

    return true if self.create(activity_attributes.merge({:user_id => user.id}))
    false
  end
  
end
