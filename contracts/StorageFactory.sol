//// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;
    
    function create() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }
}