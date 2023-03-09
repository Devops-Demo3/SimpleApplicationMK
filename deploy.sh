#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop example_app
cd SimpleApplicationMK/
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
# sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
# pm2 start ./bin/www --name example_app --env=production
pm2 start ./bin/www --name example_app