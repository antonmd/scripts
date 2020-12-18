#This script install latest docker and docker-compose on debian 10 and probably on another version deb base systems(bat not tested)

#Check docker-compose versions here https://github.com/docker/compose/releases and put it as script`s parameter like ./docker-and-compose-debian10.sh "1.27.4"

apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt update -y

apt install docker-ce docker-ce-cli containerd.io -y
curl -L https://github.com/docker/compose/releases/download/$1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose