## Boris Bikes

#### Tech stack:
• Ruby 3.0.0  
• Sinatra  
• Rspec  
• Capybara  
• Simplecov for test coverage  

----
#### To run the test suite:

git clone this repo to your local machine  
run <bundle install> in the terminal  
run <bundle exec rspec> in the terminal  
  
----
#### To run the server:
  
git clone this repo to your local machine  
run <bundle install> in the terminal   
run <rackup -p 3000> in the terminal (or a port of your choice)  
visit http://localhost:3000/ on a web browser  
have fun!  
  
----
A user:
- [X] can release a working bike from a dock  
- [X] cannot release a broken bike from a dock  
- [X] cannot release a bike if dock is empty  
- [X] can dock a bike  
- [X] cannot dock a bike if dock is at capacity  
- [X] can report a bike as broken  
- [X] a bike is removed from the storage when released  

| class          | instances       | methods          |
|----------------|-----------------|------------------|
| DockingStation | @bikes = []     | release_bike     |
|                |                 | dock_bike(bike)  |
|                |                 | view_bikes       |
|                |                 | - private -      |
|                |                 | bike_working?    |
|                |                 | dock_empty?      |
|                |                 | dock_full?       |
| Bike           | @working = true | working?         |
|                |                 | report_broken    |
