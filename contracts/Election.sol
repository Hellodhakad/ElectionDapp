pragma solidity 0.5.0;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //mapping candidate
    mapping (uint => Candidate) public candidates;

    //count of candidates
    uint public candidatesCount;

    //Constructor
    constructor () public {
        addCandidate("Narendra Modi");
        addCandidate("Rahul Gandhi");
    }

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}