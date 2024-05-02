// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";


contract Storagefactory{
    SimpleStorage[] public listofsimpleStoragecontacts;
    function createSimpleStorage() public {
        SimpleStorage newSimpleStorageContract= new SimpleStorage();
        listofsimpleStoragecontacts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
        
        listofsimpleStoragecontacts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listofsimpleStoragecontacts[_simpleStorageIndex].retrieve();

    }




}