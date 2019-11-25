FROM jenkins/jenkins:lts
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
# if we want to install via apt
USER root
RUN apt-get update
RUN apt-get install -y ruby
# drop back to the regular jenkins user - good practice
USER jenkins
