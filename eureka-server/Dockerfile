#FROM is the base image for which we will run our application
FROM java:8
# Copy files and directories from the application
COPY eureka-service*.jar /opt/
COPY jarRunner.sh /opt/
#Tell Docker what command to start
CMD sh /opt/jarRunner.sh
# Tell Docker we are going to use this port
EXPOSE 9101
