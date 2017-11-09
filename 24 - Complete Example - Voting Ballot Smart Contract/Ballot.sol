pragma solidity ^0.4.16;

contract Ballot {
  struct Voter {
    uint weight;
    bool voted;
    address delegate;
    uint vote;
  }

  struct Proposal {
    bytes32 name;
    uint voteCount;
  }

  address public chairperson;

  // declare a state variable that stores a voter struct for each
  // possible address
  mapping(address => Voter) public voters;

  Proposal[] public proposals;

  function Ballot(bytes32[] proposalNames) public {
    chairperson = msg.sender;
    voters[chairperson].weight = 1;
    for (uint i = 0; i < proposalNames.length; i++) {
      createProposal(proposalNames[i]);
    }
  }

  function createProposal (bytes32 proposalName) public {
    require(msg.sender == chairperson);
    proposals.push(Proposal({
      name: proposalName,
      voteCount: 0
    }));

  }

  function getProposalsCount() public constant returns (uint)  {
    return proposals.length;
  }

  function getVoterWeight (address voter) constant public returns (uint)  {
    return voters[voter].weight;
  }

  function giveRightToVote(address voter) public {
    require(msg.sender == chairperson);
    require(!voters[voter].voted);
    require(voters[voter].weight == 0);

    voters[voter].weight = 1;
  }

  function delegate(address to) public {
    Voter storage sender = voters[msg.sender];
    require(!sender.voted);

    require(to != msg.sender);

    // iterate until we find an entry with an empty address entry
    while (voters[to].delegate != address(0)) {
      to = voters[to].delegate;
      require(to != msg.sender);
    }

    sender.voted = true;
    sender.delegate = to;

    Voter storage delegate_to = voters[to];
    if (delegate_to.voted) {
      proposals[delegate_to.vote].voteCount += sender.weight;
    } else {
      delegate_to.weight += sender.weight;
    }
  }

  function vote (uint proposal) public {
    Voter storage sender = voters[msg.sender];
    require(!sender.voted);
    sender.voted = true;
    sender.vote = proposal;

    proposals[proposal].voteCount += sender.weight;
  }

  function winningProposal() constant public returns (uint winner) {
    uint winningVoteCount = 0;
    for (uint p = 0; p < proposals.length; p ++) {
      if (proposals[p].voteCount > winningVoteCount) {
        winningVoteCount = proposals[p].voteCount;
        winner = p;
      }
    }
  }

  function winnerName() constant public returns (bytes32 name) {
    name = proposals[winningProposal()].name;
  }

  function getProposalName(uint index) public constant returns (bytes32) {
    require(index < proposals.length);
    require(index >= 0);
    return proposals[index].name;
  }

  function getProposalVoteCount(uint index) public constant returns (uint) {
    require(index < proposals.length);
    require(index >= 0);
    return proposals[index].voteCount;
  }
}
