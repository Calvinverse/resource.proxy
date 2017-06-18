#!/bin/sh
# `/sbin/setuser memcache` runs the given command as the user `memcache`.
# If you omit that part, the command will be run as root.
exec /sbin/setuser fabio /usr/bin/fabio -cfg /etc/fabio/fabio.properties 2>&1 | logger
