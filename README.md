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


----

#### Learnings:

###### raising and rescuing custom errors
• begin running the code block. If an error is raised during that block, instead of limiting the user to a full page non specific 404, allow a rescue with a custom message for that specific error and a redirect (continuation of code block) to the page the user was using.

```
begin
  @dock.dock_bike(@bike)
  session[:message] = "Successfully docked #{@bike.name}"
rescue CapacityError => e
  session[:message] = e.message
end
```

• to ensure the rescue catches that specific error and not any StandardError that may happen within that block, create a class that inherits from the StandardError class and initialize a default message.

```
class CapacityError < StandardError
  def initialize(message="Dock is at capacity. No more bikes can be docked")
    super
  end
end
```

helpful links:
• http://rubylearning.com/satishtalim/ruby_exceptions.html  
• https://www.honeybadger.io/blog/ruby-custom-exceptions/  
