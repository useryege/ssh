sudo apt update && sudo apt install squid -y
sudo mv ./squid.conf /etc/squid
sudo systemctl restart squid
