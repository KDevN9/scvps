# AutoScript VPN  BY KDevN9
[![N|Solid](https://cdn.icon-icons.com/icons2/2699/PNG/512/telegram_logo_icon_168691.png)](https://t.me/kdevn9)

AutoScript VPN With Xray , V2Ray , OHP & Stunnel5 Core

- XRay VMess / VLess / Trojan / XTLS
- OHP Dropbear / OPenVPN
- Trojan-GO Coming Soon
- Ubuntu 18 / 20 
- Debian 9 & 10

## Features

- Free Domain
- Port Changer
- User Login Checker
- All Service Trial (soon)
- Backup Via Email
## Price

Biling Per Month & Lifetime

- RM10 / 1 Month
- RM28 / 3 Month
- RM58 / 6 Month
- RM100 / Lifetime
### Command Install

```
rm -f setup.sh && apt update && apt upgrade -y && update-grub && sleep 2 && apt-get update -y && apt-get upgrade && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/KDevN9/scvps/main/setup.sh && chmod +x setup.sh && screen -S setup ./setup.sh
```

### Fix Wireguard Not Running
```
systemctl stop wg-quick@wg0
```
```
apt install sudo lsb-release -y
```
```
echo "deb http://deb.debian.org/debian $(lsb_release -sc)-backports main" | sudo tee /etc/apt/sources.list.d/backports.list
```
```
sudo apt update -y
```
```
sudo apt -y --no-install-recommends install net-tools iproute2 openresolv dnsutils linux-headers-$(uname -r)
```
```
sudo apt --no-install-recommends install wireguard-tools wireguard-dkms
```
```
systemctl start wg-quick@wg0
```
```
systemctl enable wg-quick@wg0
```

### Check Status Wireguards
```
systemctl status wg-quick@wg0
```
