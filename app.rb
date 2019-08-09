require 'sinatra/base'
require './lib/user'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    session[:user] = User.new(params[:name])
    redirect 'birthday'
  end

  get '/birthday' do
    @user = session[:user]
    erb :birthday
  end
end

