module Apis

  class User < Grape::API

    resources :users do
      get '/' do
        @hello = Settings.hello
        views_path('users/index')
      end
    end
  end

end