sudo apt-get install nfs-common -y

sudo mkdir -p /var/lib/docker/volumes/app/_data

sudo mount 10.10.10.100:/var/lib/docker/volumes/app/_data /var/lib/docker/volumes/app/_data