#!/bin/bash

YELLOW='\033[1;33m'
LGREEN='\033[1;32m'
NC='\033[0m' # No Color
#echo -e " ${YELLOW}RepoList${NC} Updating "

source ~/virt/10.0-SOH/bin/activate
cd /opt/odoo/10.0-SOH/10.0
echo "**********************  ANNADURAI ************************"
echo "**************************    ************************"
echo "**************************    ************************"
echo "**********************  In CONSERVATION ENVIRONMENT ************************"


echo -e " ${YELLOW} ENTER THE DB NAME"
read db_name
echo -e " ${LGREEN} ENTER THE APP(s) NAME"
read app_name
./odoo-bin -c /etc/odoo/10.0-SOH/odoo-server-10.0.conf -d $db_name -u $app_name
echo " "
echo "**********************  In CT ************************"
echo " "
exec bash
