//// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // stating our version

import "./SimpleStorage.sol";
contract StorageFactory {
    SimpleStorage public simpleStorage;
    
    function create() public {
        simpleStorage = new SimpleStorage();
    }
}