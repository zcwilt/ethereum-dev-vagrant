add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
add-apt-repository -y ppa:ethereum/ethereum-qt
apt-get update
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install -y nodejs build-essential solc ethereum nginx

# ganache-cli (ganache-cli) has replaced ethereumjs-testrpc (testrpc)
npm install -g ganache-cli truffle
npm install -g @openzeppelin/contracts

# tezos

add-apt-repository -y ppa:serokell/tezos && sudo apt-get update
sudo apt-get install -y tezos-client
# dpkg-source prohibits uppercase in the packages names so the protocol
# name is in lowercase
sudo apt-get install -y tezos-baker-010-ptgranad