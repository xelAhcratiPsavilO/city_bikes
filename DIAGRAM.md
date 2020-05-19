# Objects & Messages Diagram

Interaction diagram that shows how Objects use Messages to communicate with one another.

```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike(if available)
DockingStation <-- release_bike --> error(if none available)
DockingStation <-- dock(a Bike) --> a Bike
DockingStation <-- bike --> a Bike
```
Back to [readme](README.md).
