OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '831805202546-engu404qvqoau9p71uv91i5sepug8eik.apps.googleusercontent.com ', 'PPA-ZYYoxFJLi1j3ehzeyaKx', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end