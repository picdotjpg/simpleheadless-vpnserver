mv /www/vpns/*.ovpn /www/
mv /www/vpns/client0.ovpn /www/
sudo cp $HOME/client0.ovpn /www/
sudo cp /root/*.ovpn /www/
sudo rm -rf /www/vpns/*
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
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/LICENSE -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/Default-Free-Vpn-Servers.txt -P /www/vpns/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/Other-Vpn-Servers.txt -P /www/vpns/
sudo rm $HOME/setupvpn.sh
sudo rm $HOME/refreshdir.sh
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/setupvpn.sh -P $HOME/
sudo wget https://raw.githubusercontent.com/picdotjpg/simpleheadless-vpnserver/master/refreshdir.sh -P $HOME/
sudo mv /www/*.ovpn /www/vpns/
sudo cp $HOME/refreshdir.sh /www/refreshdir.sh
sudo mv /www/client0.ovpn /www/vpns/
