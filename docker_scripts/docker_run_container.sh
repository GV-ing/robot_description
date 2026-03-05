#!/bin/bash
THISDIR=$(dirname "$(realpath "$0")")

IMAGE_NAME="robot_description"
IMAGE_ID=$(docker images -q "$IMAGE_NAME")
CNT_NAME="robot_description_cnt"

# Start X access for container
xhost +local:root
docker run --rm -it --net=host \
	--env="DISPLAY=$DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--env="XDG_RUNTIME_DIR=/tmp/runtime-root" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--device=/dev/dri:/dev/dri \
	--privileged \
	"${DOCKER_VOLUMES_ARGS[@]}" \
	--name="$CNT_NAME" \
	--workdir "/root/ros2_ws" \
	"$IMAGE_NAME" \
	bash

xhost -local:root
