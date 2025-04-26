sudo apt update && sudo apt install squid -y
mv ./squid.conf /etc/squid
sudo systemctl restart squid
