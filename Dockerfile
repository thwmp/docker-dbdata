FROM busybox:latest

#add mysql user and group / permission issues with mysql container
RUN groupadd -r mysql && useradd -r -g mysql mysql

# Prepare directories
RUN mkdir -p /etc/mysql
RUN mkdir -p /var/lib/mysql

#set file permissions for mysql user
RUN chown -R mysql:mysql /etc/mysql
RUN chown -R mysql:mysql /var/lib/mysql

# Create volumes for mysql config and databases
VOLUME ["/etc/mysql", "/var/lib/mysql"]

# Run shell
CMD ["/bin/sh"]
