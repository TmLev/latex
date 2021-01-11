# Ubuntu Groovy
FROM ubuntu:20.10

# Update system
RUN apt-get update

# Install packages
COPY install-packages.sh /
RUN sh install-packages.sh

# User settings
COPY bashrc /bashrc

# Setup system environment
ENV TZ=Europe/Moscow
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Configure ssh
RUN echo "StrictHostKeyChecking=no" >> /etc/ssh/ssh_config
EXPOSE 22

# Run ssh daemon
RUN mkdir /var/run/sshd
CMD ["/usr/sbin/sshd", "-D"]
