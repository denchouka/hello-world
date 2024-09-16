
# 使用官方的Java运行时环境作为基础镜像
FROM public.ecr.aws/amazoncorretto/amazoncorretto:8u412

MAINTAINER Denchouka

# 设置工作目录
WORKDIR /app

# 将项目的jar文件复制到容器中
COPY target/hello-world-1.0.0.jar /app/hello-world-1.0.0.jar

# 暴露应用程序使用的端口
EXPOSE 8889

# 运行应用程序
ENTRYPOINT ["java", "-jar", "/app/hello-world-1.0.0.jar"]

