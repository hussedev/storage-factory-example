//// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;
    
    function create() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        simpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256)  {
       SimpleStorage simpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
       return simpleStorage.retrieve();
    }
}