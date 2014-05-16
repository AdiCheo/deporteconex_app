# Update when we have an app created, these are for my testing app

Rails.application.config.middleware.use OmniAuth::Builder do
  # When we implement a more standardized logging system, these should go there instead. For now they're just here for development.
  p ">>> Twitter Staging API Key: #{ENV['STAGINGTWITTERAPIKEY']}"
  p ">>> Twitter Staging API Secret: #{ENV['STAGINGTWITTERAPISECRET']}"
  provider :twitter, ENV['STAGINGTWITTERAPIKEY'], ENV['STAGINGTWITTERAPISECRET']
end
