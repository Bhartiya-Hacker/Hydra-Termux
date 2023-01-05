#!/data/data/com.termux/files/usr/bin/bash
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
LIGHTGREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHTBLUE='\033[1;34m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Checking if System is updated or not ${NC}"
cd;pkg update -y
echo -e "${ORANGE}Installing dependencies${NC}"
pkg install git build-essential make openssl-tool libssh libidn libpcreposix mariadb libmariadbcpp postgresql subversion phpmydmin memcached libgpg-error libcrypt -y
echo -e "${ORANGE}Started cloning hydra${NC}"
git clone https://github.com/vanhauser-thc/thc-hydra
echo -e "${BLUE}Navigating to the Configuration folder${NC}"
cd thc-hydra
clear
echo -e "${LIGHTBLUE}
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
     	|H|Y|D|R|A|  |i|n|  |T|e|r|m|u|x|
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
              |b|y| |BHARTIYA HACKER|
           +-+-+ +-+-+-+-+-+-+-+-+-+-+
${NC}"
echo -e "${ORANGE}Starting configuration, It may took some time${NC}"
sleep 0.1
echo -e "${ORANGE}Configuring core engine, please wait ...${NC}"
./configure
clear
echo -e "${ORANGE}Configuration Completed. Now Verifying Files.. Plesase wait.. :)"
sleep 0.1
make 
echo -e "${LIGHTRED}Started Final Core Installation... please wait...${NC}"
make install
echo -e "${RED}Process completed (~_*) : You can check it by giving the following command ${LIGHTBLUE}hydra -h${NC}"