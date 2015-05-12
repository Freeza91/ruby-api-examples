require File.expand_path('../boot', __FILE__)

require 'bundler'
Bundler.require

# require 'sinatra/base'
# require 'sinatra/activerecord'
# require "sinatra/contrib"
# # require "tilt/jbuilder"
# # require "sinatra/jbuilder"
# require 'slim'
require 'rack/csrf'


class MyApp < Sinatra::Base
  register Sinatra::Contrib

  config_file File.expand_path('../config.yml', __FILE__)
  set :root, File.expand_path('../../', __FILE__)
  set views: root + '/app/views'

  require File.expand_path('../environment', __FILE__)
end
