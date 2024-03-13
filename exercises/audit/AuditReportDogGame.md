# Audit Report

## specific solidity version not specified - Low
```
pragma solidity ^0.8.4;
```
allows multiple versions of the compiler to be used, this could lead to unintended effects.

## addWinners function is public - Critical

The UI seems to call the 'addWinners' function, this is public and can be called by anyonme from outside the UI to add any address as a winner.

## numberPlayers can be updated without sending any ETH - Critical

```
numberPlayers++;
```
Will be updated without sending any Ether, this could be fixed by using a require statement

## Using of .send in payWinners function - 

.send will only return a boolean value of false but will not revert the transaction.
best practice is to use .transfer or even .call:
```
require(winners[i].call{value: _amount}(""), "Transfer failed");
```

## 
