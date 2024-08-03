// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Auction {
    // Public variables
    uint public startTime;
    uint public highestBid;
    address public owner;
    address public highestBidder;

    // Mapping variable to store bids
    mapping(address => uint) public bids;

    // Event to notify when a new bid is placed
    event NewBid(address bidder, uint bid);

    // Event to notify when the auction is ended
    event AuctionEnded(address winner, uint finalBid);

    // Constructor to initialize the auction
    constructor() {
        owner = msg.sender;
        startTime = block.timestamp;
    }

    // Function to place a bid
    function bid(uint _bid) public payable {
        // Require that the auction has started
        require(block.timestamp >= startTime, "Auction has not started");

        // Require that the bidder has sent sufficient amount
        require(msg.value >= _bid, "Insufficient amount sent");

        // Require that the bid is higher than the current highest bid
        require(_bid > highestBid, "Bid must be higher than current highest bid");

        // Update the highest bid and bidder
        highestBid = _bid;
        highestBidder = msg.sender;

        // Store the bid in the mapping
        bids[msg.sender] = _bid;

        // Emit an event to notify of the new bid
        emit NewBid(msg.sender, _bid);

        // Ensure highestBid is never negative (though it should always be non-negative)
        assert(highestBid >= 0);
    }

    // Function to end the auction
    function endAuction() public {
        // Ensure only the owner can end the auction
        if (msg.sender != owner) {
            revert("Only the owner can end the auction");
        }

        // Emit an event to notify of the auction end
        emit AuctionEnded(highestBidder, highestBid);
    }
}
