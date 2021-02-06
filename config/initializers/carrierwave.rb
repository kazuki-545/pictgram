require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage =:fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIAWYMWKRGSRGE53Y4B'],
    aws_secret_access_key: ENV['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'],
    region: ENV['ap-northeast-1'],
    path_style: true
  }
  config.fog_directory  = 'techboostbucket123'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/s3techboostbucket123'
end