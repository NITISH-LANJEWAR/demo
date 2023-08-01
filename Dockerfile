FROM centos:centos8
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.epel.cloud|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum update -y
RUN yum install -y httpd
RUN yum install -y unzip
RUN yum install -y zip
RUN echo "HI THIS IS KUBERNETES CLUSTER" > /var/www/html/index.html
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/primecare.zip  /var/www/html/
WORKDIR /var/www/html
#RUN unzip primecare.zip
#RUN cp -rvf primecare-html/* .
#RUN rm -rf primecare-html  primecare.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 







#<html>
#<body bgcolor="green">
#<h1>Welcome to my 9th devops pipeline code </h1>
#<h2>youtube videos and dedication can bring anything possible </h2>
#<front color="red"><marquee>Hi All welcome to my pipeline>
#</body>
#</html>
