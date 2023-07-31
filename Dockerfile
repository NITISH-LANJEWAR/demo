FROM centos:latest
RUN yum clean all && yum update -y
RUN yum install -y httpd 
RUN yum install -y unzip
RUN yum install -y zip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/primecare.zip  /var/www/html/
WORKDIR /var/www/html 
RUN unzip primecare.zip
RUN cp -rvf primecare/* .
RUN rm -rf primecare primecare.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80  







#<html>
#<body bgcolor="green">
#<h1>Welcome to my 9th devops pipeline code </h1>
#<h2>youtube videos and dedication can bring anything possible </h2>
#<front color="red"><marquee>Hi All welcome to my pipeline>
#</body>
#</html>
