// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this uses the solidity version 0.8.18 and above

// This contract let's you store your favorite number
// You can also search for a person's favorite number by entering their name
contract SimpleStorage {

    uint256 public myFavoriteNumber; // defaulted to 0, if not set
    uint256[] listOfFavoriteNumbers;

    // Person type variable that stores number and name
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToNumber;

    // to update your favorite number
    function store(uint256 _favouriteNumber) public {
        myFavoriteNumber = _favouriteNumber;
    }

    // to see your favorite number
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    // to add people and favorite number
    // and to find a person's favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push(newPerson);
        nameToNumber[_name] = _favoriteNumber;
    }
}