
sudo mkdir /www/
sudo mkdir /www/vpns/
sudo chmod 645 /www/vpns/


#installs busybox for httpd
if [[ $OS =~ (debian|ubuntu) ]]; then
	apt-get update
	apt-get install -y busybox
elif [[ $OS == 'centos' ]]; then
	yum install -y epel-release
	wget https://busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64
	mv busybox-x86_64 busybox
	chmod +x busybox
elif [[ $OS == 'oracle' ]]; then
	yum install -y busybox
	yum-config-manager --enable ol8_developer_EPEL
	yum install -y busybox
elif [[ $OS == 'amzn' ]]; then
	amazon-linux-extras install -y epel
	yum install -y busybox
elif [[ $OS == 'fedora' ]]; then
	dnf install -y busybox
elif [[ $OS == 'arch' ]]; then
	pacman --needed --noconfirm -Syu busybox
fi

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
sudo wget https://github.com/picdotjpg/simpleheadless-vpnserver/blob/master/index.html
sudo wget https://github.com/picdotjpg/simpleheadless-vpnserver/blob/master/img.tar.gz
sudo tar -xvzf img.tar.gz -C /www/vpns/
sudo mv index.html /www/vpns/
sudo mv /www/vpns/img/* /www/vpns/
sudo cp ~/*.vpn /www/vpns/
sudo tar -cf /www/vpns/*.ovpn DEFAULT.tar
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
sudo wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
sudo chmod +x openvpn-install.sh
sudo ./openvpn-install.sh
