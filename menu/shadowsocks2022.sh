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
echo -e "${MB}————————————————————————————————————————————————————————${NC}"
echo -e "          \E[42;1;37m      [ Shadowsocks 2022 Menu ]      ${NC}         "
echo -e "${MB}————————————————————————————————————————————————————————${NC}"
echo -e ""
echo -e " ${WB}[1]${NC} ${GB}Create Account Shadowsocks 2022${NC} "
echo -e " ${WB}[2]${NC} ${GB}Trial Account Shadowsocks 2022${NC} "
echo -e " ${WB}[3]${NC} ${GB}Extend Account Shadowsocks 2022${NC} "
echo -e " ${WB}[4]${NC} ${GB}Delete Account Shadowsocks 2022${NC} "
echo -e " ${WB}[5]${NC} ${GB}Check User Login${NC} "
echo -e ""
echo -e " ${WB}[0]${NC} ${GB}Back To Menu${NC}"
echo -e ""
echo -e "${MB}————————————————————————————————————————————————————————${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-ss2022 ; exit ;;
2) clear ; trialss2022 ; exit ;;
3) clear ; extend-ss2022 ; exit ;;
4) clear ; del-ss2022 ; exit ;;
5) clear ; cek-ss2022 ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "salah tekan " ; sleep 1 ; shadowsocks2022 ;;
esac
