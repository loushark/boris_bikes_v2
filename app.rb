require 'sinatra/base'
require './lib/DockingStation'
require './lib/Bike'

class BorisBikes < Sinatra::Base
  get '/' do
    erb :home
  end
end
