# ethereum-dev-vagrant
Uses Vagrant to build an Ubuntu 18.04 development environment for playing with Ethereum and smart contracts. See the Vagrantfile and bootstrap.sh for more details.

Obviously, you'll need to have Vagrant installed and a hypervisor such as Virtualbox.

Based on https://github.com/mmccaff/vagrant-ethereum-dev and the article
https://hackernoon.com/full-stack-smart-contract-development-fccdfe5176ce


The Vagrantfile is configured to map /home/vagrant/contracts in the guest vm to ../contracts on your host. If you want to play with Web3, the guest is running nginx as a web server on port 80 and maps /var/www/html to ../web on your host.

Detailed documentation

A collection of other eth dev links
-----------------------------------
* http://truffleframework.com/
* http://www.gjermundbjaanes.com/understanding-ethereum-smart-contracts/
* http://solidity.readthedocs.io/en/develop/
* https://github.com/ethereum/wiki/wiki/White-Paper
* https://medium.com/loom-network/how-to-code-your-own-cryptokitties-style-game-on-ethereum-7c8ac86a4eb3
* https://cryptozombies.io/
* https://happyfuncorp.com/whitepapers/webthereum

A collection of links about creating ERC20 tokens
--------------------------------------------------
* http://truffleframework.com/tutorials/robust-smart-contracts-with-openzeppelin
* https://github.com/OpenZeppelin/zeppelin-solidity
* https://github.com/ConsenSys/Tokens

