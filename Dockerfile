FROM alpine:3.4

MAINTAINER Nikola Petkanski <nikola@petkanski.com>

RUN adduser -u 1000 -D -g '' www-data

RUN apk --update install beanstalkd

EXPOSE 11300

CMD ["beanstalkd", "-p", "11300"]
