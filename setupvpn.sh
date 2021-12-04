
sudo mkdir /www/
sudo mkdir /www/vpns/
sudo chmod 645 /www/vpns/


#installs busybox for httpd
apt-get update
apt-get install -y busybox

/bin/busybox httpd -h /www/vpns/ -p 80
echo "[Unit]
Description=Simple busybox httpd service
Before=network-online.target
Wants=network-online.target
[Service]
Type=oneshot
ExecStart=/bin/busybox httpd -h /www/vpns/ -p 80
ExecStop=/bin/busybox httpd -h /www/vpns/ -p 80
RemainAfterExit=yes
[Install]
WantedBy=multi-user.target" >/etc/systemd/system/vpnshttpd.service
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/index.html
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/lin1.png
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/lin2.png
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/lin3.png
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/lin4.png
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win1.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win2.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win3.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win4.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win5.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win6.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win7.PNG
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/win.png
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/tux.png
sudo tar -xvzf img.tar.gz -C /www/vpns/
sudo mv index.html /www/vpns/
sudo mv /www/vpns/img/* /www/vpns/
sudo cp ~/*.vpn /www/vpns/
sudo cp ~/*.png /www/vpns/
sudo wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/LICENSE -P /www/vpns/
sudo chmod +x openvpn-install.sh
sudo export AUTO_INSTALL=y
sudo export APPROVE_INSTALL=y
sudo export APPROVE_IP=y
sudo export IPV6_SUPPORT=n
sudo export PORT_CHOICE=1
sudo export PROTOCOL_CHOICE=1
sudo export DNS=11
sudo export COMPRESSION_ENABLED=n
sudo export CUSTOMIZE_ENC=n
sudo export CLIENT=client0
sudo export PASS=1
sudo ./openvpn-install.sh
sudo cp ~/*.vpn /www/vpns/
