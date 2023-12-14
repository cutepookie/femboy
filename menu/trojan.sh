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
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "               \E[42;1;37m     [ Trojan Menu ]      ${NC}              "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e ""
echo -e " ${MB}[1]${NC} ${GB}Create Account Trojan${NC} "
echo -e " ${MB}[2]${NC} ${GB}Trial Account Trojan${NC} "
echo -e " ${MB}[3]${NC} ${GB}Extend Account Trojan${NC} "
echo -e " ${MB}[4]${NC} ${GB}Delete Account Trojan${NC} "
echo -e " ${MB}[5]${NC} ${GB}Check User Login${NC} "
echo -e ""
echo -e " ${MB}[0]${NC} ${GB}Back To Menu${NC}"
echo -e ""
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-trojan ; exit ;;
2) clear ; trialtrojan ; exit ;;
3) clear ; extend-trojan ; exit ;;
4) clear ; del-trojan ; exit ;;
5) clear ; cek-trojan ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "salah tekan " ; sleep 1 ; trojan ;;
esac
