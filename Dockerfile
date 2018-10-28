FROM alpine:3.8
RUN apk --no-cache update
RUN apk --no-cache upgrade
RUN apk --no-cache add tor
RUN rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
ADD torrc /etc/tor/torrc
EXPOSE 9050/tcp
ENTRYPOINT ["/usr/bin/tor","-f","/etc/tor/torrc"]
