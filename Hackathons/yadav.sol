// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public voters;
    mapping(string => uint256) public votesReceived;
    string[] public candidateList;

    constructor(string[] memory candidateNames) {
        candidateList = candidateNames;
    }

    function vote(string memory candidate) public {
        require(!voters[msg.sender], "Already voted!");
        require(validCandidate(candidate), "Invalid candidate!");

        voters[msg.sender] = true;
        votesReceived[candidate]++;
    }

    function validCandidate(string memory candidate) view public returns (bool) {
        for (uint i = 0; i < candidateList.length; i++) {
            if (keccak256(bytes(candidateList[i])) == keccak256(bytes(candidate))) {
                return true;
            }
        }
        return false;
    }
}
