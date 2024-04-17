#!/usr/bin/env bash

# from https://stackoverflow.com/questions/47011838/docker-rmi-is-it-okay-to-use-force

# imageName=ubuntu
# containerIds=$(docker ps -a | grep "$imageName" | awk '{ print $1 }')
# docker stop $containerIds
# docker rm $containerIds
# docker rmi "$imageName"
eho
docker ps -all -q
docker images 
echo 
echo
echo

# D === d$ to the end but remain edit mode
# d0 to the beginning and remain edit mode
# c0 same but insert mode
# c$ is most useful as it change into insert mode

# J to join line
# #yy then p for quick line copy

imageId=$1
containerIds=$(docker ps -aq --filter "ancestor=$1 ")
echo imageId=$imageId
echo $imageId
echo 'a=$1'
echo "a=$1"

echo containerId=$containerIds
echo $containerIds

docker stop $containerIds
docker rm $containerIds
docker rmi $imageId 

docker ps -all -q
docker images 
echo 
