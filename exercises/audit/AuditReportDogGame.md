# Audit Report

## specific solidity version not specified - Low
```
pragma solidity ^0.8.4;
```
allows multiple versions of the compiler to be used, this could lead to unintended effects.

## addWinners function is public - Critical

The UI seems to call the 'addWinners' function, this is public and can be called by anyonme from outside the UI to add any address as a winner. This should be gated via a modifier such as onlyOwner.

## addPlayers function is public, 'numberPlayers' can be updated without sending any ETH, or sending way more - Critical
```
numberPlayers++;
```
This code is outside the scope of the 'if' statement and will be update the variable without sending any Ether.

## payout function is public - critical



## Using of .send in payWinners function - High

.send will only return a boolean value of false but will not revert the transaction.
best practice is to use .transfer or even .call. Like this:
```
require(winners[i].call{value: _amount}(""), "Transfer failed");
```
## specific solidity version not specified - Low
```
pragma solidity ^0.8.4;
```
allows multiple versions of the compiler to be used, this could lead to unintended effects.
