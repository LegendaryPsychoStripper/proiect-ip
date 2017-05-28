# Change this omniauth configuration to point to your registered provider
# Since this is a registered application, add the app id and secret here
APP_ID = '30a7fcfa-4223-11e7-a919-92ebcb67fe33'
APP_SECRET = '10a34637ad661d98ba3344717656fcc76209c2f83e6c06b1a28a035e21aa0a736ef80afadc43122c'

CUSTOM_PROVIDER_URL = 'http://193.226.51.18:8888' #'http://fmi-autentificare.herokuapp.com'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :autentificare, APP_ID, APP_SECRET, {:provider_ignores_state => true}
end
