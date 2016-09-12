CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'us-west-2' ,
      path_style: true
    }
    config.storage :fog 
    config.fog_directory = ENV['AWS_S3_BUCKET']
    config.asset_host = ENV['ASSET_HOST']
  else
    config.storage :file
  end
end
