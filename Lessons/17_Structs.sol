// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({
            model: "Lamborghini",
            year: 1980,
            owner: msg.sender
        });
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        // memory is a temporary variable
        // storage affects the storage
        Car storage _car = cars[0];
        _car.model;
        _car.year = 1999;
        delete _car.owner;

        delete cars[1];
    }
}
