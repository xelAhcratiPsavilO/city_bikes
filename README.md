# City Bikes

Object based system to optimize a digital network for a city-bike service. A network of docking stations and bikes that anyone can use.

## Table of Contents
* [Domain Model](#domain-model)
* [Technologies](#technologies)
* [Getting Started](#getting-started)
* [Running the tests](#running-the-tests)

## Domain Model

A high-level overview of the entities that make up this functional system.

Objects  | Messages
------------- | -------------
Person  |
Bike  | working?
DockingStation | release_bike
DockingStation | dock(bike)
DockingStation | bike

Based on [client's requirements](USER_STORIES.md).

Objects-Messages [diagram](DIAGRAM.md).

## Technologies
* Ruby
* RSpec

## Getting Started

```sh
# clone or download and unzip repository

# launch irb, pry or other ruby REPL
$ irb
# load the DockingStation class
001 > require './lib/docking_station'
=> true
# create a new DockingStation instance
002 > station = DockingStation.new
=> #<DockingStation:0x00007f8aee176d50>
```

## Running the tests

```sh
# clone or download and unzip repository

# launch RSpec
$ repec
```
