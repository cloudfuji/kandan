CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIWJDB4QUSTONFLIA',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  if Rails.env.development?
    config.fog_directory  = 'eitachat-dev'
    config.fog_host       = 'http://eitachat-dev.s3-website-us-east-1.amazonaws.com'
  else
    config.fog_directory  = 'eitachat'
    config.fog_host       = 'http://eitachat.s3-website-us-east-1.amazonaws.com'
  end
end
