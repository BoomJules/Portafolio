pragma solidity ^0.8.13;

contract SplitPayment {
    
    function pay(address payable[] calldata recipients, uint[] calldata amounts) external payable {
        require(recipients.length == amounts.length, 'arrays have different length');
        uint i;
        uint totalToSend;
        for(i = 0; i < amounts.length; i++) {
            totalToSend += amounts[i];
        }
        require(msg.value >= totalToSend, 'not enought ether');
        for(i = 0; i < recipients.length; i++) {
            recipients[i].transfer(amounts[i]);
        }
    }
}
