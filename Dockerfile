FROM debian:buster

WORKDIR /tmp
COPY listusb-1.0_amd64.deb .

RUN apt-get update && apt-get -y install libusb-1.0-0-dev && dpkg -i listusb-1.0_amd64.deb
CMD listusb
