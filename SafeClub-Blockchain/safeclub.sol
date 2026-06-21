// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "https://cdn.jsdelivr.net/npm/@openzeppelin/contracts@4.9.3/access/Ownable.sol";
import "https://cdn.jsdelivr.net/npm/@openzeppelin/contracts@4.9.3/security/ReentrancyGuard.sol";

contract SafeClub is Ownable, ReentrancyGuard {
    struct Proposal {
        uint256 id;
        address payable to;
        uint256 amount;
        string description;
        uint256 deadline;
        uint256 votesFor;
        uint256 votesAgainst;
        bool executed;
        uint256 createdAt;
    }
    mapping(address => bool) public members;
    uint256 public memberCount;

    mapping(uint256 => Proposal) public proposals;
    uint256 public proposalCount;

    mapping(uint256 => mapping(address => bool)) public hasVoted;

    uint8 public quorumPercent = 50;

    event MemberAdded(address indexed member);
    event MemberRemoved(address indexed member);
    event Deposit(address indexed from, uint256 amount);
    event ProposalCreated(uint256 id, address indexed proposer, address to, uint256 amount, uint256 deadline);
    event Voted(uint256 indexed id, address indexed voter, bool support);
    event ProposalExecuted(uint256 id, address indexed executor);

    modifier onlyMember() {
        require(members[msg.sender], "Only members");
        _;
    }

    constructor() {
        members[msg.sender] = true;
        memberCount = 1;
        emit MemberAdded(msg.sender);
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function deposit() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function addMember(address _member) external onlyOwner {
        require(_member != address(0), "zero address");
        require(!members[_member], "already member");
        members[_member] = true;
        memberCount += 1;
        emit MemberAdded(_member);
    }

    function removeMember(address _member) external onlyOwner {
        require(members[_member], "not a member");
        members[_member] = false;
        memberCount -= 1;
        emit MemberRemoved(_member);
    }
    function createProposal(
        address payable _to,
        uint256 _amountWei,
        string calldata _description,
        uint256 _durationSeconds
    ) external onlyMember returns (uint256) {
        require(_to != address(0), "invalid recipient");
        require(_amountWei > 0, "amount > 0");
        require(_durationSeconds >= 60, "duration too short");

        proposalCount += 1;
        uint256 id = proposalCount;

        proposals[id] = Proposal({
            id: id,
            to: _to,
            amount: _amountWei,
            description: _description,
            deadline: block.timestamp + _durationSeconds,
            votesFor: 0,
            votesAgainst: 0,
            executed: false,
            createdAt: block.timestamp
        });

        emit ProposalCreated(id, msg.sender, _to, _amountWei, proposals[id].deadline);
        return id;
    }

    function vote(uint256 _proposalId, bool _support) external onlyMember {
        Proposal storage p = proposals[_proposalId];
        require(p.id != 0, "proposal not found");
        require(block.timestamp <= p.deadline, "voting closed");
        require(!hasVoted[_proposalId][msg.sender], "already voted");
        require(!p.executed, "already executed");

        hasVoted[_proposalId][msg.sender] = true;

        if (_support) {
            p.votesFor += 1;
        } else {
            p.votesAgainst += 1;
        }

        emit Voted(_proposalId, msg.sender, _support);
    }

    function isAccepted(uint256 _proposalId) public view returns (bool) {
    Proposal storage p = proposals[_proposalId];
    uint256 totalVotes = p.votesFor + p.votesAgainst;

    uint256 minVotesRequired = 1; 

    if (totalVotes < minVotesRequired) return false;

    return p.votesFor > p.votesAgainst;
}

    function executeProposal(uint256 _proposalId) external nonReentrant onlyMember {
        Proposal storage p = proposals[_proposalId];
        require(block.timestamp > p.deadline, "voting not finished");
        require(!p.executed, "already executed");
        require(isAccepted(_proposalId), "proposal not accepted");
        require(address(this).balance >= p.amount, "insufficient balance");

        p.executed = true;

        (bool sent, ) = p.to.call{value: p.amount}("");
        require(sent, "transfer failed");

        emit ProposalExecuted(_proposalId, msg.sender);
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
