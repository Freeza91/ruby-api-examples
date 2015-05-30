class Settings < Settingslogic
  root = File.expand_path('../../../', __FILE__)
  source "#{root}/config/application.yml"
  namespace ENV['RACK_ENV'] ||= "development"
end