class UsersController < ApplicationController

  before '/' do
    p request.path_info
    pass if ["", "/show"].include? request.path_info.split('/')[1]

    p 'this is before fitler only in this controller'
  end

  helpers ApplicationHelper
  helpers UserHelper

  get '/new' do
    slim :'/users/new'
  end

  get '/' do
    @hello = 'hello'
    jbuilder :'/users/new'
    # slim :'users/new' #welcome
  end

  get '/show' do
    show
  end

  post '/create' do
    p "hello create"
  end

end