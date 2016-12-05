FROM heap-base:2.0

MAINTAINER Benoit Beausejour <b@turbulent.ca>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get install -y memcached && \
  rm -rf /var/lib/apt/lists/*

ADD run.sh /run.sh

EXPOSE 11211

VOLUME ["/vol/logs"]
CMD ["/run.sh"]
