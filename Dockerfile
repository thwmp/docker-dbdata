FROM ubuntu:trusty

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update
RUN apt-get -y install nano

# Prepare directories
RUN mkdir -p /etc/mysql
RUN mkdir -p /var/lib/mysql

# Create volumes for mysql config and databases
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Run bash
CMD ["/bin/bash"]
