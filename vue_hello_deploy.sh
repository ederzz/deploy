cd /root/git_pro/vue-hello-world && git pull # git pull project

docker build -t vue-hello:latest . # build image

vue_hello_container_id=`docker ps -qaf name=vue-hello` # find container id

if [ "$vue_hello_container_id" != "" ]
then
  docker rm $vue_hello_container_id -f # delete container
fi

docker run --name vue-hello -p 8080:80 -d vue-hello:latest # run container