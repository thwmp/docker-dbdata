FROM ubuntu:trusty

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# Install packages
RUN apt-get update
RUN apt-get -y install nano

# Create volumes for mysql config and databases
VOLUME  ["/etc/mysql", "/var/lib/mysql"]

# Run bash
CMD ["/bin/bash"]
