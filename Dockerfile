FROM centos

MAINTAINER nshimayang

RUN yum install -y rsync

ENTRYPOINT ["/usr/bin/rsync"]
CMD ["--help"]
