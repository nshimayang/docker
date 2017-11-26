FROM ruby:2.4.2

MAINTAINER nshimayang

ENV SERVERSPEC_VERSION 2.41.3
ENV RUBOCOP_VERSION 0.51.0

RUN gem install serverspec -v ${SERVERSPEC_VERSION} && \
    gem install rubocop -v ${RUBOCOP_VERSION}

WORKDIR /serverspec

ENTRYPOINT ["/usr/local/bin/rake"]
CMD ["--tasks"]
