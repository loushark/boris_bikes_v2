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
    @bike = Bike.instance
  end

  get '/dockingStations' do
    erb :dockingStations
  end

  get '/bike/new' do
    erb :new_bike_form
  end

  post '/bike/new' do
    @bike = Bike.create(params[:bike_name])
    @dock.dock_bike(@bike)
    redirect '/dockingStations'
  end


end
