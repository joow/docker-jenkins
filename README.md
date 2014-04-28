docker-jenkins
==============
Simple Dockerfile for Jenkins on CentOS.

To build :
    
    docker build -t jenkins github.com/joow/docker-jenkins
  
To run :
    
    docker run -P jenkins
  
To find out the mapped port :
    
    docker ps
  
And then connect to `http://localhost:<mapped_port>` to access your new Jenkins instance.
