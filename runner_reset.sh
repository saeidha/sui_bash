yes | sudo apt-get install xdotool
chmod +x reset_sui.sh
cp reset_sui.service /etc/systemd/system/
chmod 644 /etc/systemd/system/reset_sui.service
systemctl enable reset_sui.service

