
sudo export DEBIAN_FRONTEND=noninteractive
sudo apt-get -yq install phpmyadmin

sudo echo "Include /etc/phpmyadmin/apache.conf" | sudo tee -a /etc/apache2/apache2.conf
sudo  /etc/init.d/apache2 restart


#printf " export DEBIAN_FRONTEND=noninteractive \n apt-get -yq install phpmyadmin \n sudo echo 'Include /etc/phpmyadmin/apache.conf' | sudo tee -a /etc/apache2/apache2.conf \n sudo  /etc/init.d/apache2 restart \n" 
