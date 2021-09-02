require 'sinatra/base'
require './lib/DockingStation'
require './lib/Bike'


class BorisBikes < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  get '/dockingStation/new' do
    erb :new_dockingstation
  end

  post '/dockingStations' do
    @dock = DockingStation.create(params[:dock_name], params[:dock_capacity].to_i)
    redirect '/dockingStations'
  end

  before do
    @dock = DockingStation.instance
    @bike = Bike.instance
  end

  get '/dockingStations' do
    @message = session[:message]
    message = nil
    erb :dockingStations
  end

  get '/bike/new' do
    erb :new_bike_form
  end

  post '/bike/new' do
    @bike = Bike.create(params[:bike_name])
    @dock.dock_bike(@bike)
    session[:message] = "Successfully docked #{@bike.name}"
    redirect '/dockingStations'
  end


end
