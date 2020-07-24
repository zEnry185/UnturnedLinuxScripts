# Prints the version of the script
echo "You're running Unturned Server Deployer v0.0.1"

# Updating to CloudFlare nameservers"
echo "nameserver 1.1.1.1" > /etc/resolv.conf
echo "nameserver 1.0.0.1" >> /etc/resolv.conf

# Creating a new user to run SteamCMD safely
useradd -m steam

# Moving to Steam's home folder
cd /home/steam

# Installing SteamCMD
yum install steacmd

# Switching to steam user
su - steam

# Run SteamCMD
cd ~
steamcmd

# Logging-in into steam anonymously
login anonymous

# Downloading the Unturned Server
app_update 1110390
quit

# Moving to Server's Directory
cd steam\home\SteamCMD\steamapps\common\U3DS

# Asking for Server's name
echo "Please input the desired name for the Server's folder:"
read servername

# Starting Server
./ServerHelper.sh +InternetServer/$servername
