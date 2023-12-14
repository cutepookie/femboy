#!/bin/bash
NC='\033[0;37m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\033[0;37m'
YB='\033[0;36m'
BB='\033[0;34m'
MB='\033[0;32m'
CB='\e[35;1m'
WB='\e[37;1m'
clear
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "              \E[42;1;37m     [ All Xray  Menu ]      ${NC}            "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e ""
echo -e " ${MB}[1]${NC} ${GB}Create Account All Xray${NC} "
echo -e " ${MB}[2]${NC} ${GB}Trial Account All Xray${NC} "
echo -e " ${MB}[3]${NC} ${GB}Extend Account All Xray${NC} "
echo -e " ${MB}[4]${NC} ${GB}Delete Account All Xray${NC} "
echo -e " ${MB}[5]${NC} ${GB}Check User Login${NC} "
echo -e ""
echo -e " ${MB}[0]${NC} ${YB}Back To Menu${NC}"
echo -e ""
echo -e "${BB}———————————————————————————————————————————————————————${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-xray ; exit ;;
2) clear ; trialxray ; exit ;;
3) clear ; extend-xray ; exit ;;
4) clear ; del-xray ; exit ;;
5) clear ; cek-xray ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "salah tekan " ; sleep 1 ; xray ;;
esac
