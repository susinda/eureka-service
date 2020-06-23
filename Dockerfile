#FROM is the base image for which we will run our application
FROM java:8

# Copy files and directories from the application
COPY target/eureka-server*.jar /opt/
COPY src/main/resources/application.properties /opt/

#set workdir
WORKDIR /opt 
 
#Tell Docker what command to start
CMD touch nohup.out; nohup java -jar eureka-server-*.jar --spring.config.location=file:///opt/application.properties & tail -f nohup.out

# Tell Docker we are going to use this port
EXPOSE 9191
