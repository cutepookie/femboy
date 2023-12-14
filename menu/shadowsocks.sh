#!/bin/bash
NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\033[0;36m'
GB='\033[0;37m'
YB='\e[33;1m'
BB='\033[0;34m'
MB='\033[0;33m'
CB='\e[35;1m'
WB='\e[37;0m'
clear
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "             \E[42;1;37m      [ Shadowsocks Menu ]      ${NC}           "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e ""
echo -e " ${MB}[1]${NC} ${GB}Create Account Shadowsocks${NC} "
echo -e " ${MB}[2]${NC} ${GB}Trial Account Shadowsocks${NC} "
echo -e " ${MB}[3]${NC} ${GB}Extend Account Shadowsocks${NC} "
echo -e " ${MB}[4]${NC} ${GB}Delete Account Shadowsocks${NC} "
echo -e " ${MB}[5]${NC} ${GB}Check User Login${NC} "
echo -e ""
echo -e " ${MB}[0]${NC} ${GB}Back To Menu${NC}"
echo -e ""
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-ss ; exit ;;
2) clear ; trialss ; exit ;;
3) clear ; extend-ss ; exit ;;
4) clear ; del-ss ; exit ;;
5) clear ; cek-ss ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "salah tekan " ; sleep 1 ; shadowsocks ;;
esac
