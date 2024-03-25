// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SimpleStorage {
    uint256 public favouriteNumber;

    mapping(string=>uint256) public nameToFavouriteNumber;

    /**
     * @dev Store value in variable
     * @param num value to store
     */

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    function store(uint256 num) public virtual {
        favouriteNumber = num;
    }

    People[] public people;

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
       nameToFavouriteNumber[_name]=_favouriteNumber;
    }
}
