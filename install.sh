echo "Start install docker-ce"

curl -fsSL https://get.docker.com | bash

echo "Docker-ce install done"
echo "Start install docker-compose"

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo "Docker-compose install done"
echo "Start install docker-machine"

curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && \
chmod +x /tmp/docker-machine && \
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

echo "Docker-machine install done"

echo "All work are done :) have fun!"
