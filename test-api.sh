#!/bin/bash
echo "Testing without parameters";
php index.php;
echo "***";
echo "Testing with bad wallet parameters";
php index.php --wallet=0x256b2b26Fe8eCAd201103946F8C603b401cE16E;
echo "***";
echo "Testing with good wallet parameters";
php index.php --wallet=0x256b2b26Fe8eCAd201103946F8C603b401cE16EC;
echo "***";
echo "Testing getBalance with Ethereum parameter"; 
php index.php --wallet=0x256b2b26Fe8eCAd201103946F8C603b401cE16EC --chain=Ethereum;
echo "***";
echo "Testing getBalance with bad chain parameter";
php index.php --wallet=0x256b2b26Fe8eCAd201103946F8C603b401cE16EC --chain=Ethereu;
echo "***";
echo "Testing blockNumber with Ethereum parameter";
php index.php --chain=Pirl --CMD=blockNumber;
echo "***";
echo "Testing blockNumber with Ethereum parameter";
php index.php --chain=Ethereum --CMD=blockNumber;
echo "***";
echo "Testing peerCount with default parameter";
php index.php --CMD=peerCount;
echo "***";
echo "Testing peerCount with Ethereum parameter";
php index.php --CMD=peerCount --chain=Ethereum;
echo "***";

