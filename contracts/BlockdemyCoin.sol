pragma solidity ^0.6.12;

// imports

// contrato
/**
*Contrato para almacenar los balances del BlockdemyCoin
* Balance del token
* address -> cantidad
*/

contract BlockdemyCoin {
    // Variables
    mapping (address => uint ) balances;

    // Constructor
    constructor () public {
        balances[msg.sender] = 1000;
    }

    // Métodos
    function send (address receiver, uint amount) public{
        require(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        
        // Es equivalente al previo
        /* if (balances[msg.sender] > amount){
            balances[msg.sender] -= amount;
            balances[receiver] += amount;
        }
        else {
            revert();
        } */
    }

    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }

}

