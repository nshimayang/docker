FROM amazonlinux

MAINTAINER nshimayang

RUN yum install -y groff awscli

ENV AWS_DEFAULT_REGION ap-northeast-1

ENTRYPOINT ["aws"]
CMD ["help"]