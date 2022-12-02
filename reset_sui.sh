#!/bin/sh
screen -S sui
cd $HOME/sui
rm -r suidb genesis.blob
git fetch upstream
git checkout -B devnet --track upstream/devnet
wget https://github.com/MystenLabs/sui-genesis/raw/main/devnet/genesis.blob
cargo run --release --bin sui-node -- --config-path fullnode.yaml
screen -D -RR
