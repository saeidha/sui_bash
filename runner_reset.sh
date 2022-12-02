yes | sudo apt-get install xdotool
chmod +x reset_sui.sh
crontab -e
@reboot sh reset_sui.sh

