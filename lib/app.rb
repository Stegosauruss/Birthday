require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    "Hello, World!"
  end
end

