FROM jenkins/jenkins:lts
USER root
RUN set -eux && \
    apt-get update && \
    apt-get install sudo -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
