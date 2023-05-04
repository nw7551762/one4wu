# 使用官方的 OpenJDK 镜像作为基础镜像
FROM openjdk:11-jdk-slim

# 设置环境变量
ENV PROJECT_NAME universal-house
ENV PROJECT_ROOT /app

# 创建应用目录
RUN mkdir ${PROJECT_ROOT}

# 将您的项目 WAR 文件复制到容器中的 app 目录
COPY target/${PROJECT_NAME}.war ${PROJECT_ROOT}/app.war

# 切换工作目录
WORKDIR ${PROJECT_ROOT}

# 暴露端口，根据您的应用需要配置
EXPOSE 5000

# 启动 Spring Boot 应用
CMD ["java", "-jar", "app.war"]