FROM centos:latest
MAINTAINER shubhambaviskar500@gmail.com
RUN yum install -y httpd \
   zip \ 
   unzip
ADD https://www.free-css.com/assets/files/free-css-template/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf louxury.zip/ * .
RUN rm -rf loxury loxury.zip
CMD  ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
