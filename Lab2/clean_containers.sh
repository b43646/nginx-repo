sudo docker stop $(sudo docker ps -a -q)
sudo docker rm -v $(sudo docker ps -a -q)
sudo docker rmi $(sudo docker images -q --filter=dangling=true)
