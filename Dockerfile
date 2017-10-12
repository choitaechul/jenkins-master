# Dockerfile for Jenkins Master
FROM jenkins
VOLUME ["/efs:/var/jenkins_home"]