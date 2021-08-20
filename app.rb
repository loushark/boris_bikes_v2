require 'sinatra/base'
require './lib/DockingStation'
require './lib/Bike'

class BorisBikes < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/dockingStation/new' do
    erb :new_dockingstation
  end

  post '/dockingStations' do
    @dock = DockingStation.create(params[:dock_name], params[:dock_capacity])
    redirect '/dockingStations'
  end

  before do
    @dock = DockingStation.instance
  end

  get '/dockingStations' do
    erb :dockingStations
  end


end
