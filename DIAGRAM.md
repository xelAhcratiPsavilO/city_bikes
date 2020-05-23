# Objects & Messages Diagram

Interaction diagram that shows how Objects use Messages to communicate with one another.

```
CLASS          <--         METHOD      --> OUTPUT

Bike           <--        broken?      --> true/false
Bike           <--    report_broken    --> true
Bike           <--         fix         --> false

DockingStation <--     release_bike    --> error(if none available)
DockingStation <--     release_bike    --> a Bike(if available)
DockingStation <--     dock(a Bike)    --> [a Bike]
DockingStation <-- dock(a faulty Bike) --> [a faulty Bike]

Garage         <--       fix_bikes     --> a Bike(not broken)

Van            <--      load(a Bike)   --> a Bike
Van            <--         unload      --> a Bike(not broken)

BikeContainer  <--       capacity      --> given capacity (if given)
BikeContainer  <--       capacity      --> default capacity (if none given)
BikeContainer  <--   add_bike(a Bike)  --> error (if out of capacity)
BikeContainer  <--   add_bike(a Bike)  --> [a Bike] (if capacity)
BikeContainer  <--     remove_bike     --> error(if none available)
BikeContainer  <--     remove_bike     --> a Bike(if available)
```
Back to [readme](README.md).
