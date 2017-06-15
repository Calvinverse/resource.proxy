FROM 192.168.100.2:5000/calvinverse/resource.consul.ubuntu:0.1.0
LABEL maintainer "Petrik van der Velde (@petrikvdvelde)"

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Create a user and group first so the IDs get set the same way, even as
# the rest of this may change over time.
RUN addgroup fabio && \
    adduser fabio --system --ingroup fabio

# install fabio
# ADD ssl /etc/ssl/certs
ADD fabio-${VersionFabio}-go1.8.3-linux_amd64 /usr/bin/fabio
ADD fabio.properties /etc/fabio/fabio.properties

# Run fabio
RUN mkdir /etc/service/fabio
COPY fabio.sh /etc/service/fabio/run
RUN dos2unix /etc/service/fabio/run && \
    chmod +x /etc/service/fabio/run
