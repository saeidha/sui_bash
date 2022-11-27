cd /root/
sui client active-address | tee faucet.txt
git clone https://github.com/MystenLabs/sui.git --branch devnet
cd sui
git remote add upstream https://github.com/MystenLabs/sui
git fetch upstream
cp crates/sui-config/data/fullnode-template.yaml fullnode.yaml
curl -fLJO https://github.com/MystenLabs/sui-genesis/raw/main/devnet/genesis.blob
cd sui
screen -S sui
# cargo run --release --bin sui-node -- --config-path fullnode.yaml
cd /root/
cat faucet.txt
