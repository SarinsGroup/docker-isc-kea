FROM debian:stable-slim
RUN apt install -y curl apt-transport-https gnupg
RUN curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-2-2/setup.deb.sh' | -E bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/isc/stork/setup.deb.sh' | -E bash

RUN apt update && apt upgrade -y

RUN apt install -y isc-kea-common isc-kea-ctrl-agent isc-kea-admin isc-kea-dhcp4-server isc-kea-dhcp-ddns-server libfreeradius-client python3-isc-kea-connector isc-stork-agent

