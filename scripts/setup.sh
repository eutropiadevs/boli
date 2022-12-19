make all

rm -rf ~/.boli

mkdir ~/.boli

boli init --chain-id test test
boli keys add test --recover --keyring-backend test<<<"y
wage thunder live sense resemble foil apple course spin horse glass mansion midnight laundry acoustic rhythm loan scale talent push green direct brick please"
boli add-genesis-account test 100000000000000stake --keyring-backend test
boli gentx test 1000000000stake --chain-id test --keyring-backend test
boli collect-gentxs
boli start