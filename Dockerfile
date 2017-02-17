FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.5

RUN gem install go_watchdog --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["go_watchdog"]
CMD ["--help"]
