# Change this omniauth configuration to point to your registered provider
# Since this is a registered application, add the app id and secret here
APP_ID = 'XeEYZxTTNF6XHwxpE436'
APP_SECRET = 'SjPCZ1YHZrtxgFM019MZ'	

CUSTOM_PROVIDER_URL = 'http://localhost:8080' #'http://193.226.51.18:8888' 

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :autentificare, APP_ID, APP_SECRET, {:provider_ignores_state => true}
end
