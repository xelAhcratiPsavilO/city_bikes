# City Bikes 🚲

Object based system to optimize a digital network for a city-bike service. A network of docking stations and bikes that anyone can use.

## Table of Contents
* [Domain Model](#domain-model)
* [Technologies](#technologies)
* [Getting Started](#getting-started)
* [Running the tests](#running-the-tests)
* [Author](#author)

## Domain Model

A high-level overview of the entities that make up this functional system.

Objects  | Messages
------------- | -------------
Person  |
Bike  | broken?
Bike  | report_broken
Bike  | fix
DockingStation | release_bike
DockingStation | dock(bike)
DockingStation | capacity
Garage |fix_bikes
Garage |add_bike
Garage |remove_bike
Garage |capacity

Based on [client's requirements](USER_STORIES.md).

Objects-Messages [diagram](DIAGRAM.md).

## Technologies
* [Ruby](https://www.ruby-lang.org/en/) - High-level, general-purpose language utilized as main technology.
* [RSpec](https://rspec.info/) - Domain specific language utilized as testing tool.
* [IRB](https://en.wikipedia.org/wiki/Interactive_Ruby_Shell) - Interactive ruby shell utilized as a REPL.
* [MD](https://www.markdownguide.org/) - Lightweight markup language utilized for documentation.

## Getting Started

```sh
# clone or download and unzip repository

# launch irb, pry or other ruby REPL
$ irb
# load the DockingStation class
> require './lib/docking_station'
=> true
# create a new DockingStation instance
> station = DockingStation.new
=> #<DockingStation:0x00007f8aee176d50>
```

## Running the tests

```sh
# clone or download and unzip repository

# launch RSpec
$ rspec
# output
.............................

Finished in 0.08404 seconds (files took 0.57766 seconds to load)
29 examples, 0 failures
```

## Author

Alejandro Pitarch Olivas
