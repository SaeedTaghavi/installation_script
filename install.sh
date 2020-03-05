# cd ./src
# make clean
# make compile
# make run
# cd ..








# #### Set the Server Timezone to Asia/Tehran
# sudo timedatectl set-timezone Asia/Tehran

# #### set hostname 
# sudo hostnamectl set-hostname YOURHOSTNAME


# #### change autologin config
# sudo sed 's/--autologin pi//' /etc/systemd/system/getty\@tty1.service.d/autologin.con|sudo tee ~/autologin.con
# sudo mv ~/autologin.con /etc/systemd/system/getty\@tty1.service.d/autologin.con


# #### change setting clock log
# sed 's/#LogLevel=info/LogLevel=notice/' /etc/systemd/system.conf | sudo tee /etc/systemd/system.conf 


# #### Download and Install the Latest Updates for the OS
# sudo apt update && sudo apt -y full-upgrade
