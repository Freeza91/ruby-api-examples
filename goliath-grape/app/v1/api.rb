require 'grape/jbuilder'

Dir[
  File.expand_path('../helpers/**/*.rb', __FILE__),
  File.expand_path('../Apis/**/*.rb', __FILE__)
].each { |f| require f }

module V1
  class API < Grape::API

    version 'v1'
    format :json
    formatter :json, Grape::Formatter::Jbuilder

    helpers ::Helpers::OneHelper
    mount ::Apis::User

    get '/' do
      { hello: " hello grape and goliath " }
    end

  end
end