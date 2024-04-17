FROM centos:7
RUN yum update -yum
RUN yum install java openjdk -yum
ADD 