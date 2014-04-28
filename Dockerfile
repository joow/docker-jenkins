FROM centos

MAINTAINER Benoît Giraudou, bgiraudou@gmail.com

# Install wget
RUN yum -y install wget

# Configure Jenkins Redhat repository
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key

# Install JDK 7 and Jenkins
RUN yum -y install java-1.7.0-openjdk-devel jenkins

ENTRYPOINT ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]
USER jenkins

EXPOSE 8080
