#### Set the Server Timezone to Asia/Tehran
sudo timedatectl set-timezone Asia/Tehran

#### set hostname 
sudo hostnamectl set-hostname YOURHOSTNAME


#### change autologin config
sudo sed 's/--autologin pi//' /etc/systemd/system/getty\@tty1.service.d/autologin.con|sudo tee ~/autologin.con
sudo mv ~/autologin.con /etc/systemd/system/getty\@tty1.service.d/autologin.con


#### change setting clock log
sed 's/#LogLevel=info/LogLevel=notice/' /etc/systemd/system.conf | sudo tee /etc/systemd/system.conf 


#### Download and Install the Latest Updates for the OS
export DEBIAN_FRONTEND=noninteractive
apt-get update && 
apt-get -o Dpkg::Options::="--force-confold" upgrade -q -y --force-yes

#apt-get -o Dpkg::Options::="--force-confold" dist-upgrade -q -y --force-yes
sudo apt update && sudo apt -y full-upgrade

#### install mysql in noninteractive
sudo ./install_mysql.sh

#### install phpMyAdmin in noninteractive
sudo ./install_phpMyAdmin.sh

#### install mysql-client
sudo apt install -y libmysqlclient-dev

#### install ssl
sudo apt-get install -y libssl-dev

#### install WiringNP:
sudo git clone https://github.com/friendlyarm/WiringNP ~/WiringNP  
sudo chmod 755 ~/WiringNP/build
cd ~/WiringNP
sudo ./build   
gpio readall
cd ~

sudo rm -rf ~/WiringNP/

#### install g++ compiler:
sudo apt -y install g++

#### copy to crontab:
(sudo crontab -l ; sudo  echo "@reboot /home/fa/start.sh >> /home/fa/cron_log_b.txt 2>&1")| sudo  crontab -
(sudo crontab -l ; sudo  echo "*/5 * * * * /home/fa/start.sh >> /home/fa/cron_log_m.txt 2>&1")| sudo  crontab -

