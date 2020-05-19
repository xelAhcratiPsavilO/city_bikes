# Objects & Messages Diagram

Interaction diagram that shows how Objects use Messages to communicate with one another.

```
Bike <-- working? --> true/false
Bike <-- broken? --> true/false
Bike <-- report_broken --> true
DockingStation <-- release_bike --> error(if none available)
DockingStation <-- release_bike --> error(if broken)
DockingStation <-- release_bike --> a Bike(if available and working)
DockingStation <-- dock(a Bike) --> error(if out of capacity)
DockingStation <-- dock(a Bike) --> [a Bike](if capacity)
DockingStation <-- capacity --> given capacity (if given)
DockingStation <-- capacity --> default capacity (if none given)
```
Back to [readme](README.md).
