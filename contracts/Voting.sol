// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string description;
        uint voteCount;
    }

    address public chairperson;
    mapping(address => bool) public voters;
    Proposal[] public proposals;

    constructor(string[] memory proposalNames) {
        chairperson = msg.sender;
        for (uint i = 0; i < proposalNames.length; i++) {
            proposals.push(
                Proposal({description: proposalNames[i], voteCount: 0})
            );
        }
    }

    function register(address voter) public {
        require(
            msg.sender == chairperson,
            "Only chairperson can register a voter."
        );
        require(!voters[voter], "The voter is already registered.");
        voters[voter] = true;
    }

    function vote(uint proposal) public {
        require(voters[msg.sender], "Has no right to vote");
        require(proposal < proposals.length, "Invalid proposal");
        proposals[proposal].voteCount += 1;
    }

    function winningProposal() public view returns (uint winningProposal_) {
        uint winningVoteCount = 0;
        for (uint p = 0; p < proposals.length; p++) {
            if (proposals[p].voteCount > winningVoteCount) {
                winningVoteCount = proposals[p].voteCount;
                winningProposal_ = p;
            }
        }
    }

    function getProposal(
        uint proposal
    ) public view returns (string memory description, uint voteCount) {
        require(proposal < proposals.length, "Invalid proposal");
        Proposal storage prop = proposals[proposal];
        return (prop.description, prop.voteCount);
    }
}
