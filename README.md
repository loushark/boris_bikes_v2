## Boris Bikes

A user:
* can release a working bike from a dock
* cannot release a broken bike from a dock
* cannot release a bike if dock is empty
* can dock a bike
* cannot dock a bike if dock is at capacity
* can report a bike as broken

| class          | instances       | methods          |
|----------------|-----------------|------------------|
| DockingStation | @bikes = []     | release_bike     |
|                |                 | dock_bike(bike)  |
|                |                 | - private -      |
|                |                 | is_bike_working? |
|                |                 | is_dock_empty?   |
|                |                 | is_dock_full?    |
| Bike           | @working = true | working?         |
|                |                 | report_broken    |
