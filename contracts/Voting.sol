// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Voting is Ownable(msg.sender) {
    mapping(address => bool) public hasVoted;
    mapping(bytes32 => uint256) public votesReceived;

    bytes32[] public candidateList;

    constructor(string[] memory candidateNames) {
        for (uint i = 0; i < candidateNames.length; i++) {
            candidateList.push(keccak256(abi.encodePacked(candidateNames[i])));
        }
    }

    function vote(bytes32 candidate) public {
        require(!hasVoted[msg.sender], "You have already voted");
        require(validCandidate(candidate), "Not a valid candidate");

        hasVoted[msg.sender] = true;
        votesReceived[candidate] += 1;
    }

    function validCandidate(bytes32 candidate) public view returns (bool) {
        for (uint i = 0; i < candidateList.length; i++) {
            if (candidateList[i] == candidate) {
                return true;
            }
        }
        return false;
    }

    function totalVotesFor(bytes32 candidate) public view returns (uint256) {
        require(validCandidate(candidate), "Not a valid candidate");
        return votesReceived[candidate];
    }
}
