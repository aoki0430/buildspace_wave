pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    string[] public AllAddress;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function storeAllAddress(string memory _adr) public {
        AllAddress.push(_adr);
        console.log("-----------------Addresses----------------------");
        for (uint j = 0; j < AllAddress.length; j++) {
            console.log(AllAddress[j]);
        }
        console.log("------------------------------------------------");
    }
}