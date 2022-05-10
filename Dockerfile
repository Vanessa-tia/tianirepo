# specify a base image 
FROM centos:7

# update pakages
RUN  yum -y update && yum clean all

# install apache
RUN  yum -y install httpd

#copy index inside the container at specified location
COPY index.html /var/www/html/

EXPOSE 80

# start httpd when container start (equivalent to systemctl)
ENTRYPOINT [ "usr /sbin httpd" ]

# run this command when container start. keeps container running until you decide to stop it
CMD ["-D", "FOREGROUND"]
