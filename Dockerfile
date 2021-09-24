FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -qy openvpn iptables socat curl
RUN openssl dhparam -out /etc/openvpn/dh.pem 2048
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
