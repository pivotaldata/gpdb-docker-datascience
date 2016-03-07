#
#  Dockerfile for a GPDB SNE Data Science Image
#

FROM pivotaldata/gpdb-base
MAINTAINER dbaskette@pivotal.io
MAINTAINER dcomingore@pivotal.io

COPY * /tmp/

RUN chown -R gpadmin: /tmp

EXPOSE 5432 22
VOLUME /gpdata

# Set the default command to run when starting the container
CMD service sshd start \
	&& su gpadmin -l -c "/tmp/run.sh;/bin/bash"
