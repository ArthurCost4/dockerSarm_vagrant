sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install docker-ce

# Install docker-compose || choose your version 
sudo mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/"your_version-HERE"/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose

sudo chmod +x ~/.docker/cli-plugins/docker-compose

sudo usermod -aG docker vagrant
