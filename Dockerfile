FROM ubuntu

#update the package and install apache2 server
RUN apt-get update -y && \
    apt-get install apache2 -y

#copy the index.html file inti the apache root directory
COPY index.html /var/www/html/

#start the apache server in the foreground
CMD ["/usr/lib/apachectl", "-D", "FOREGROUND"]
