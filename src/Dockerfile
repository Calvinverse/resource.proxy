FROM 192.168.100.2:5000/calvinverse/resource.consul.ubuntu:0.1.0
LABEL maintainer "Petrik van der Velde (@petrikvdvelde)"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Create a user and group first so the IDs get set the same way, even as
# the rest of this may change over time.
RUN addgroup fabio
RUN adduser fabio --system --ingroup fabio

# install fabio
# ADD ssl /etc/ssl/certs
ADD fabio-linux_amd64 /usr/bin/fabio
ADD fabio.properties /etc/fabio/fabio.properties

# Run fabio
RUN mkdir /etc/service/fabio
COPY fabio.sh /etc/service/fabio/run
RUN dos2unix /etc/service/fabio/run
RUN chmod +x /etc/service/fabio/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
