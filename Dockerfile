FROM centos:7
RUN yum update -yum
RUN yum install java openjdk -yum
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /opt/
RUN tar -xvzf apache-tomcat-8.5.100.tar.gz -C /opt

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-8.5.100/webapps/
ENV Name="Akshay"
EXPOSE 8080
