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

# create a new DockingStation instance
001 > station = DockingStation.new
```

## Running the tests

```sh
# clone or download and unzip repository

# launch RSpec
$ repec
```
