// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;// Any version greater than 0.8.0

contract Holidays{

    // Variables
    string[] public destinations;
    //["Barbados","Prague","Antartica","Maldives","Amsterdam","Japan","peoples republic of korea","Thailand","rio de janeiro "];

    // Zero indexing in arrarys.
    // Function for accessing any element
    function getDestinations(uint _listItem) public view returns (string memory) {
        return destinations[_listItem];
    }

    // Challenge is to add the destinations dynamically
    // For dynamic arrays to add new data
    // array.push(item)

    function setDestinations(string memory _destination) public{

        destinations.push(_destination);

    } 

    // STRUCTS
    // Initialized the struct
    struct details{

        string temperature;
        uint cost;
        string dates;
        string cuisine;

    }

    // declaring the struct
    details public DestinationDetails;

    function setBarbadosDetails(string memory _temp,uint _cost,string memory _date,string memory _cuisine) public{

        BarbadosDetails.temperature = _temp;
        BarbadosDetails.cost        = _cost;
        BarbadosDetails.date        = _date;
        BarbadosDetails.cuisine     = _cuisine;
    }
