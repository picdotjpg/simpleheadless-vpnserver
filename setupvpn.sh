
sudo mkdir /www/
sudo mkdir /www/vpns/
sudo chmod 645 /www/vpns/


#installs busybox for httpd
apt-get update
apt-get install -y busybox
apt-get install -y python
/bin/busybox httpd -h /www/vpns/ -p 80
echo "[Unit]
Description=BusyBox httpd vpn web server
Before=network-online.target
Wants=network-online.target
[Service]
Type=oneshot
ExecStart=/bin/busybox httpd -h /www/vpns/ -p 80 
ExecStop=/bin/busybox httpd -h /www/vpns/ -p 80 
RemainAfterExit=yes
[Install]
WantedBy=multi-user.target" >/etc/systemd/system/vpnshttpd.service
sudo systemctl enable vpnshttpd
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/index.html -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/lin1.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/lin2.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/lin3.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/lin4.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win1.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win2.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win3.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win4.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win5.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win6.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win7.PNG -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/win.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/img/tux.png -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/setupvpn.sh -P $HOME/
sudo wget https://openvpn.net/downloads/openvpn-connect-v3-windows.msi -P /www/vpns/
sudo mv /www/vpns/openvpn-connect-v3-windows.msi /www/vpns/openvpn-ins.msi
sudo mv index.html /www/vpns/
sudo mv /www/vpns/img/* /www/vpns/
sudo cp $HOME/*.vpn /www/vpns/
sudo cp $HOME/*.png /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/openvpn-install.sh
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/LICENSE -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/Default-Free-Vpn-Servers.txt -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/Other-Vpn-Servers.txt -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/refreshdir.sh -P /www/
sudo chmod +x openvpn-install.sh
export AUTO_INSTALL=y
export APPROVE_INSTALL=y
export APPROVE_IP=y
export IPV6_SUPPORT=n
export PORT_CHOICE=1
export PROTOCOL_CHOICE=1
export DNS=11
export COMPRESSION_ENABLED=n
export CUSTOMIZE_ENC=n
export CLIENT=client0
export PASS=1
sudo AUTO_INSTALL=y CLIENT=client0 ./openvpn-install.sh
sudo cp /root/*.ovpn /www/vpns/
sudo cp $HOME/client0.ovpn /www/vpns/
sudo cp $HOME/*.ovpn /www/vpns/
