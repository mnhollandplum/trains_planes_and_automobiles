# Planes, Trains, and Automobiles

This repository currently includes two sets of tests:

* Airport
* Taxi

Each is described in more detail below.

The goal is to make the full test suite for each group pass. The majority of functionality that you add will use enumerables to implement.

In order to run the tests, switch into either the `airport` or `taxi` directories and type `rake`

## Airport

### Related Classes

* Flight
    * Summary
    * Origin
    * Destination
* Plane
    * ID
* Passenger
    * name
* Suitcase
    * owner

### Functionality

* Add Plane to takeoff queue
* Remove a Plane from the queue once they've taken off
* Create a summary of flights
* Find all flights going to a city
* See if there is any flight going to a particular city
* Organize passengers using their plane as a key
* Organize luggage with passenger as a key

## Taxi

### Related Classes

* Driver
* Passenger
* Trip

### Functionality

* Find the trip that had the lowest fare
* Find the amount of the lowest fare
* Find the amount of the lowest tip
* Find the tip that was the lowest percentage of the fare
* Find the number of trips greater than $20
* Find the trip that had the highest fare
* Find the highest tipper
* Calculate the earnings for the day
* Calculate the total tips for the day

## Train (Planned)

### Related Classes

* Car
* Conductor
* Ticket

### Functionality

* Organize cars by type
* Sort cars by position
* Get total number of tickets sold from conductors
* Get total proceeds from ticket sales
* Find most popular destination from tickets

