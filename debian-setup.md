# Setup ISC Kea DHCP server on debian based Linux distros

## Assumptions

1. Debian 11 (bullseye) installed and hardened

1. We have assumed the shell as root or add sudo

```bash
sudo -i
```

![ISC Kea Logo](https://www.isc.org/images/kea.png) Kea DHCP Server

## Installations DHCP Server

1. Ensure we have curl and gnupg installed

```bash
apt install -y curl gnupg

```

1. Add Kea repository from [cloudsmith repo website](https://cloudsmith.io/%7eisc/repos). Find the latest stable release and then add it as shown below

```bash

curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-2-2/setup.deb.sh' | -E bash
curl -1sLf 'https://dl.cloudsmith.io/public/isc/stork/setup.deb.sh' | -E bash
```

1. Update and upgrade the system so that we can start installation of required packages

```bash
apt update && apt upgrade -y
apt install -y isc-kea-common isc-kea-ctrl-agent isc-kea-admin isc-kea-dhcp4-server isc-kea-dhcp-ddns-server libfreeradius-client python3-isc-kea-connector isc-stork-agent
```

| Package                   | Description |
| ------------------------- | ----------- |
| isc-kea-common            |             |
| isc-kea-ctrl-agent        |             |
| isc-kea-admin             |             |
| isc-kea-dhcp4-server      |             |
| isc-kea-dhcp-ddns-server  |             |
| libfreeradius-client      |             |
| python3-isc-kea-connector |             |
| isc-stork-agent           |             |

![ISC Stork Logo](https://stork.isc.org/img/common/stork.png)

## Installation Stork (WEB GUI)

> for detailed documentation go to [Read The Docs](https://stork.readthedocs.io/en/latest/overview.html)
