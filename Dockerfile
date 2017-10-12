# Dockerfile for Jenkins Master
FROM amazonlinux

RUN sudo yum update –y
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN sudo yum install jenkins -y
RUN sudo service jenkins start
# Add the entry amazon-ecs to plugin.txt to preload the Amazon ECS plugin
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt