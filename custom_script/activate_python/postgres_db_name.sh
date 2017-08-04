#!/bin/bash

YELLOW='\033[1;33m'
LGREEN='\033[1;32m'
NC='\033[0m' # No Color
#echo -e " ${YELLOW}RepoList${NC} Updating "

echo "********************** % Viki % ************************"
echo " "
echo " "
echo " "
echo -e " ${LGREEN} Note: Type ${YELLOW} \l ${LGREEN} to list db names and ${YELLOW} ctrl+z ${LGREEN} to close the name"
echo " "
echo " "
sudo -u postgres psql postgres
echo " "
echo " ${YELLOW} **********************  POSTGRES DB NAME ************************"
echo " "
exec bash
