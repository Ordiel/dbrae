# Dockerfile to create a functional instance 
#  of MySQL containing the 
#  DRAE - https://github.com/Ordiel/dbrae 
#  database.

# HOWTO
#  * Build this image*
#      1) Get the read only key for the drae
#         repository and put it on your ~/.ssh
#         folder.
#      docker build -t ordiel/drae:0.0.1 . (Or any desired version)

FROM mysql
MAINTAINER Ordiel "ordiel1910@gmail.com"

# Build phase

RUN apt-get update
RUN apt-get install git -y

RUN useradd drae
WORKDIR ~/

ADD ./DBCreator.sql /home/drae/DBCreator.sql
ADD ./get_ip /home/drae/get_ip
RUN chmod +x /home/drae/get_ip

# Init phase
ENTRYPOINT service mysql start && /home/drae/get_ip && tail -f /dev/null