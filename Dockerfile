FROM jenkins/jenkins:lts
COPY plugins.sh /usr/local/bin/plugins.sh 
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
