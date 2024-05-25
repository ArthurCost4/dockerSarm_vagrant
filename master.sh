#!/bin/bash
sudo docker swarm init --advertise-addr="your_network_range".41
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
