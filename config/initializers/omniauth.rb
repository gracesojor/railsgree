OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['641985282487174'], ENV['8447186bdbadb3cb0ed50075747927e4']
end
