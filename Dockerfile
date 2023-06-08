# 使用包含 JDK 11 和 Tomcat 的映像作为基础
FROM tomcat:9.0-jdk11-openjdk-slim

# 設定環境變數
ENV APP_HOME=/usr/local/tomcat/webapps/

# 在容器中創建應用程式目錄
RUN mkdir -p $APP_HOME

# 複製應用程式的 WAR 檔到容器的 webapps 目錄
#COPY target/universal-house.war $APP_HOME

# 将静态资源复制到 Tomcat 的 webapps 目录下
COPY src/main/resources/static/amado-master/ /usr/local/tomcat/webapps/amado-master/


# 複製應用程式的 WAR 檔到容器的 webapps 目錄
COPY target/universal-house.war /usr/local/tomcat/webapps/ROOT.war



# 定義容器的入口點，使用 Tomcat 運行應用程式
CMD ["catalina.sh", "run"]
