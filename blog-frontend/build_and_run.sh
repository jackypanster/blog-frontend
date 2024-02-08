#!/bin/bash

# 设置镜像名称和标签
IMAGE_NAME="blog-frontend"
TAG=$(date '+%Y%m%d%H%M')

# 构建Docker镜像
echo "构建Docker镜像..."
docker build -t ${IMAGE_NAME}:${TAG} .

# 运行Docker容器
echo "运行Docker容器..."
docker run -d -p 8080:80 --name blog-frontend ${IMAGE_NAME}:${TAG}

