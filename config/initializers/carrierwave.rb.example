CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIWJDB4QUSTONFLIA',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  if Rails.env.development?
    config.fog_directory  = 'fog_directory'
  else
    config.fog_directory  = 'fog_directory_dev'
  end
end
