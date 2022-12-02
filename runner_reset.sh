chmod +x reset_sui.sh
chmod +x reset_sui.service
cp reset_sui.service /etc/systemd/system/
chmod 644 /etc/systemd/system/reset_sui.service
systemctl enable reset_sui.service

