const BlockdemyCoin = artifacts.require('BlockdemyCoin');

contract('Check Blockdemy Coin', ()=>{
    it('Should put 1000 in the first account', async () =>{
        const coin = await BlockdemyCoin.deployed();
        const balance = await coin.getBalance(accounts[0]);

        const balanceNumber = balance.toNumber();
        assert.equal(1000, balanceNUmber, 'First account does not have a 1000 coins');
    })
})