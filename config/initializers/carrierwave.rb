if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
else
  CarrierWave.configure do |config|
    config.fog_provider = "fog/aws"
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWSAccessKeyId'],
      aws_secret_access_key:  ENV['AWSSecretKey'],
      region: 'ap-southeast-1',
      path_style: true
    }
    config.fog_directory = "brandbnb"
    config.asset_host = "http://s3-ap-southeast-1.amazonaws.com/brandbnb"
    config.fog_attributes = { 'Cache-Control' => 'max-age=315360000' }
  end
end