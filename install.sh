sudo apt-get upgrade -y
sudo apt-get update -y
sudo apt-get install ethtool -y
sudo apt-get install net-tools -y
# mac adresse ermitteln
ifconfig
# get network adapter infos
sudo ip a
# get network route and gateway adress
netstat -rn

# install docker - start
# documentation online: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
## Install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
## Then add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
## Add the Docker repository to APT sources:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
## Update your existing list of packages again for the addition to be recognized:
sudo apt update -y
## Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce
## Finally, install Docker:
sudo apt-get install docker-ce -y
## Docker should now be installed, the daemon started, and the process enabled to start on boot. Check that it’s running:
sudo systemctl status docker
# add user to docker group
sudo usermod -aG docker <USER>
su - <USER>
sudo apt install docker-compose
# install docker - end


