FROM centos

MAINTAINER nshimayang

RUN yum install -y rsync
RUN yum install -y openssh-clients

ENTRYPOINT ["/usr/bin/rsync"]
CMD ["--help"]
