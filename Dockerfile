# Dockerfile to create a functional instance 
#  of MySQL containing the 
#  DRAE - https://github.com/Ordiel/dbrae 
#  database.

# HOWTO
#  * Build this image; Replace "X.X.X" by the desired version
#      docker build -t ordiel/drae:X.X.X . 

    FROM mysql
    MAINTAINER Ordiel "ordiel1910@gmail.com"

### Build phase
    RUN mkdir drae
    ADD db /drae/db
    ADD bin /drae/bin
    RUN chmod +x /drae/bin/*
    EXPOSE 3306

### INIT Phase
    ENTRYPOINT /drae/bin/startup && tail -f /dev/null