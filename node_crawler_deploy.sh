cd /root/git_pro/node_crawler && git pull # git pull project

docker build -t node_crawler_image:latest . # build image

node_crawler_container_id=`docker ps -qaf name=node_crawler` # find container id

if [ "$node_crawler_container_id" != "" ]
then
  docker rm $node_crawler_container_id -f # delete container
fi

docker run --name node_crawler -p 7001:7001 -d node_crawler_image:latest # run container
