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
NUMBER_OF_CLIENTS=$(grep -c -E "^#÷ " "/usr/local/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB}Log Socks5 Account${NC}                "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "  ${YB}You have no existing clients!${NC}"
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
log-create
fi
clear
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB}Log Socks5 Account${NC}                "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
echo -e " ${YB}User  Expired${NC} "
echo -e "${MB}————————————————————————————————————————————————————${NC}"
grep -E "^#÷ " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e ${YB}"tap enter to go back${NC}"
echo -e "${MB}————————————————————————————————————————————————————${NC}"
read -rp "Input Username : " user
if [ -z $user ]; then
log-create
else
clear
echo -e "`cat "/user/log-socks5-$user.txt"`"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
log-create
fi
