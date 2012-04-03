class DeviseAuth
  def incoming(message, callback)
    if message['channel'] == "/meta/subscribe"
      message['error'] = "Invalid auth token" if valid_user?(message)
    end

    if valid_channel?(message['channel'])
      message['error'] = "Message could not be sent" if not save_activity(message)
    end

    puts "MESSAGE ERROR: #{message.fetch('error', '--')}"
    callback.call(message)
  end

  private

  def valid_channel?(channel)
    channel_regex = /(?<channel_id> .+){0}\/channels\/\g<channel_id>/xi
    channel_regex.match(channel)
  end

  def save_activity(message)
    puts "POST #{message.inspect}"
    activity_attributes = {
      :content    => message['data']['content'],
      :action     => "message",
      :channel_id => message['data']['channel_id'],
    }
    return true if Activity.save_for_auth_token(auth_token(message), activity_attributes)
    false
  end
  
  def valid_user?(message)
    user = User.find_by_authentication_token auth_token(message)
    return false if not user
    ActiveUsers.add(message['clientId'], user)
    user
  end

  def auth_token(message)
    puts "AUTH TOKEN FOR #{message.inspect}"
    message['ext']['auth_token']
  end
end
