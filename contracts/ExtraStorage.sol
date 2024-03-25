// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "./SimpleStorage.sol";

contract ExtraStorage  is SimpleStorage{

    function store(uint256 _favouriteNumber) public override {
        favouriteNumber = _favouriteNumber+5;
    }

}

