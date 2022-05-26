require("dotenv").config()
const Web3 = require('web3');
const web3 = new Web3(
    new Web3.providers.WebsocketProvider('wss://mainnet.infura.io/ws/v3/a06f7c8323534f81857abb825e5bc839')
);

web3.eth.subscribe('newBlockHeaders')
    .on('data', async block => {
        console.log('New block received. Block # ${block.number}');
    })
    .on('error', error => {
        console.log(error);
    });