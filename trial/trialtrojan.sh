#!/bin/bash
# Trojan
# ==================

# Color
RED="\e[1;31m"
GREEN="\e[0;32m"
NC="\e[0m"

# Validate Your IP Address
MYIP=$(wget -qO- icanhazip.com);
echo "Checking Auth For Permission"
IZIN=$(curl -sS https://raw.githubusercontent.com/KdevN91/ipvps/main/ipvps | awk '{print $4}' | grep $MYIP )
if [[ $MYIP == "" ]]; then
    echo "No Database Founded !"
    exit 1
elif [[ $MYIP = $IZIN ]]; then
    echo -e "${GREEN}Granted !${NC} Your IP Adress Is Registered"
else
    echo -e "${RED}Denied !${NC} Your IP Adress Is Not Registered";
    echo "Please Contact Admin For Buying Scripts"
    exit 0
fi
clear
IP=$( curl -s ipinfo.io/ip );
uuid=$(cat /etc/trojan/uuid.txt)
source /var/lib/kdevn9/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
fi
tr=$(cat /etc/trojan/config.json | grep local_port | sed 's/local_//g' | sed 's/port//g' | sed 's/://g' | sed 's/,//g' | sed 's/"//g' | sed 's/   //g' | sed 's/  //g')
user=dev-`</dev/urandom tr -dc X-Z0-9 | head -c4`
exp=1
domain=$(cat /etc/v2ray/domain)
read -p "Expired (days): " masaaktif
read -p "SNI (BUG)     : " sni
read -p "Subdomain (EXP : kdevn9.xyz. / Press Enter If Only Using Hosts) : " sub
dom=$sub$domain
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
systemctl restart trojan
trojanlink="trojan://${user}@${dom}:${tr}?sni=$sni#$user"
echo -e "======TROJAN-======"
echo -e "Remarks   : ${user}"
echo -e "IP/Host   : ${MYIP}"
echo -e "Domain    : ${domain}"
echo -e "Subdomain : $dom"
echo -e "Port      : ${tr}"
echo -e "Key       : ${user}"
echo -e "Created   : $hariini"
echo -e "Expired   : $exp"
echo -e "=========================="
echo -e "Link TR  : ${trojanlink}"
echo -e "=========================="
echo -e "Script By KDevN9"
