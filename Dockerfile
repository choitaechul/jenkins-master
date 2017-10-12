# Dockerfile for Jenkins Master
FROM ambakshi/amazon-linux

RUN yum update
RUN sudo yum install wget rpm
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN yum install jenkins -y
RUN service jenkins start
# Add the entry amazon-ecs to plugin.txt to preload the Amazon ECS plugin
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt