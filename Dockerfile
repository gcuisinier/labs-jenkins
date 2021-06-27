FROM jenkins/jenkins:lts-jdk11
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY casc /usr/share/jenkins/ref/casc

RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt --verbose

ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/casc 