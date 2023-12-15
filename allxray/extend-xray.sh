#!/bin/bash
NC='\033[0;37m'
DEFBOLD='\e[39;0m'
RB='\033[0;36m'
GB='\033[0;37m'
YB='\e[33;1m'
BB='\033[0;34m'
MB='\033[0;33m'
CB='\e[35;1m'
WB='\e[37;0m'
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#&@ " "/usr/local/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}Extend All Xray Account${NC}              "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "  ${YB}You have no existing clients!${NC}"
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
vmess
fi
clear
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}Extend All Xray Account${NC}              "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e " ${GB}User  Expired${NC}  "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
grep -E "^#&@ " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "${GB}tap enter to go back${NC}"
echo -e "${MB}————————————————————————————————————————————————————${NC}"
read -rp "Input Username : " user
if [ -z $user ]; then
vmess
else
read -p "Expired (days): " masaaktif
exp=$(grep -wE "^#&@ $user" "/usr/local/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
now=$(date +%Y-%m-%d)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
exp3=$(($exp2 + $masaaktif))
exp4=`date -d "$exp3 days" +"%Y-%m-%d"`
sed -i "/#&@ $user/c\#&@ $user $exp4" /usr/local/etc/xray/config.json
systemctl restart xray
clear
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "          ${GB}All Xray Account Success Extended${NC}         "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e " ${GB}Client Name :${NC} $user"
echo -e " ${GB}Expired On  :${NC} $exp4"
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
clear
vmess
fi
