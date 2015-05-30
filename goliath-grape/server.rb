require File.expand_path("../boot", __FILE__)
# Set autoload directory

require 'goliath'

class Application < Goliath::API

  def response(env)
    env['api.tilt.root'] = "#{ROOT}/app/views"
    ::Base.call(env)
  end
  # use Goliath::Rack::Params
  # use Goliath::Rack::DefaultMimeType
  # use Goliath::Rack::Render, 'json'
  #
  # def response(env)
  #   [200, {}, Post.find(params['id']).to_json]
  # end
end