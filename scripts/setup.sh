make all

rm -rf ~/.boli

mkdir ~/.boli

boli init --chain-id test test
boli keys add cooluser --keyring-backend test
boli add-genesis-account cooluser 100000000000000stake --keyring-backend test
boli gentx cooluser 1000000000stake --chain-id test --keyring-backend test
boli collect-gentxs
boli start