# 使用官方的 Spring Boot 镜像作为基础镜像
FROM openjdk:11-jre-slim

# 设置工作目录
WORKDIR /app

# 复制构建的 JAR 文件到容器中
COPY target/spring-docker-1.0.0.jar app.jar

# 暴露端口
EXPOSE 9100

# 启动 Spring Boot 应用程序
CMD ["java", "-jar", "app.jar"]
