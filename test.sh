source $HOME/.cargo/env
rustup update
apt-get install screen
# yes Y | command-that-asks-for-input
# echo Y | command
# yes Y
#echo -ne '\n'
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
sui client active-address
echo '0'
echo '\n'
