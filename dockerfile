rm -rf img
mkdir -m 777 img
cd img
touch dockerfile
cp /var/lib/jenkins/workspace/Html/index1.html
echo "
FROM ubuntu:latest
MAINTAINER "hari"
RUN apt update -y
RUN apt install git -y
RUN apt install default -jak -y
ADD https://dlcdn.apache.org/httpd/httpd-2.4.55.tar.bz2
RUN tar -zxvf /opt/httpd-2.4.55.tar.bz2 
COPY index1.html httpd-2.4.55 /webapps
EXPOSE 8080" >> dockerfile
sudo docker build -t app1:v1