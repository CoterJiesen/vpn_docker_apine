FROM alpine:latest
MAINTAINER coter
RUN apk update && apk add openvpn
COPY docker-start.sh /etc/openvpn/
RUN chmod +x /etc/openvpn/docker-start.sh
EXPOSE 1194
CMD ["/etc/openvpn/docker-start.sh"]
