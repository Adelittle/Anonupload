#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
BANNERS () {
printf "${lightgreen}==============================
      AnonFile Uploader
${white}         -Adelittle-${lightgreen}
==============================\n
"
}
BANNERS
OPTIONS () {
printf "${red}[>]${white} File     :${lightgreen} "
read goblok
hasil=$(curl -F "file=@${goblok}" https://api.anonfile.com/upload | grep -Po 'full":"\K.*?(?=")');
  printf "\n${white}Result: ${lightgreen} ${hasil} \n"
}
OPTIONS
