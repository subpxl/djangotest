# Stop all running containers
sudo docker stop $(sudo docker ps -a -q)

# Remove all containers
sudo docker rm $(sudo docker ps -a -q)

# Remove all images
sudo docker rmi $(sudo docker images -q) -f

# Remove all volumes
sudo docker volume rm $(sudo docker volume ls -q)

# Remove all networks (except default ones)
sudo docker network rm $(sudo docker network ls -q)

# Remove all build cache
sudo docker builder prune -a -f