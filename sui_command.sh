cd root/
sudo apt update && sudo apt upgrade -y
apt-get update \
    && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends \
    tzdata \
    git \
    ca-certificates \
    curl \
    build-essential \
    libssl-dev \
    pkg-config \
    libclang-dev \
    cmake
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup update
apt-get install screen
cd $home
apt install ufw -y 
ufw allow ssh 
ufw allow https 
ufw allow http 
ufw allow 9000
ufw allow 9184
ufw enable
cargo install --locked --git https://github.com/MystenLabs/sui.git --branch devnet sui sui-node
cargo install --git https://github.com/move-language/move move-analyzer --features "address20"
# sui client active-address | tee faucet.txt

# git clone https://github.com/MystenLabs/sui.git --branch devnet
# cd sui
# git remote add upstream https://github.com/MystenLabs/sui
# git fetch upstream
# cp crates/sui-config/data/fullnode-template.yaml fullnode.yaml
# curl -fLJO https://github.com/MystenLabs/sui-genesis/raw/main/devnet/genesis.blob
# cd sui
# screen -S sui
# # cargo run --release --bin sui-node -- --config-path fullnode.yaml
# cat faucet.txt
