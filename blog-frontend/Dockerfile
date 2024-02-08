# 使用Node.js作为基础镜像来构建项目
FROM node:lts as build-stage

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件和目录
COPY . .

# 构建应用
RUN npm run build

# 使用nginx作为基础镜像来部署Vue应用
FROM nginx:stable as production-stage

# 将构建结果复制到nginx容器中
COPY --from=build-stage /app/dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 运行nginx
CMD ["nginx", "-g", "daemon off;"]

