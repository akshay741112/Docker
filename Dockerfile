FROM centos:7
RUN yum update -yum
RUN yum install java openjdk -yum
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /op