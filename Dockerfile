FROM ubuntu:bionic
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl
ADD ./bin /usr/local/sbin
COPY routes.txt /home
EXPOSE 443/tcp 1194/udp 8080/tcp
VOLUME /etc/openvpn
CMD run
