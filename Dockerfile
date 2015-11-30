FROM centos:latest

RUN yum update -y && \
    yum install epel-release -y && \
    yum install nginx php-fpm php-mysql php-gd php-mcrypt -y && \
    yum clean all && \
    /usr/sbin/php-fpm -D

VOLUME ["/etc/nginx"]

EXPOSE 80 9000

COPY ["nginx.conf", "/etc/nginx/"] 

CMD ["nginx", "-g", "daemon off;"]

