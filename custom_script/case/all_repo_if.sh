#!/bin/bash  
echo "This is a shell script"  
ls -lah  
echo "Running Script"

RNAME="10_CT , 10_JOD, 10_SOD, 10_TR, 10_SOH"
YELLOW='\033[1;33m'
NC='\033[0m'
RED='\033[0;31m'
echo -e " ${YELLOW}$RNAME <<-- names"
echo "Available Repolist Name"
  
echo "RepoList Name"
read REPONAME
if [ "$REPONAME" == "10_CT" ]; then
	echo -e "${RED} Updating Conservation 10 Repolist" 
	/opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist
elif [ "$REPONAME" == "10_JOD" ]; then 
	echo -e "${RED} Updating Jodee 10 Repolist" 
	echo /opt/odoo/10.0-JOD/dev_tools/git_update/git_update.sh jodee_repolist
elif [ "$REPONAME" == "10_TR" ]; then
	echo -e "${RED} Updating Trillium 10 Repolist"  
	echo /opt/odoo/10.0-TR/dev_tools/git_update/git_update.sh trillium_repolist
elif [ "$REPONAME" == "10_SOH" ]; then
	echo -e "${RED} Updating Sohre 10 Repolist"  
	echo /opt/odoo/10.0-SOH/dev_tools/git_update/git_update.sh sohre_repolist
elif [ "$REPONAME" == "10_SOD" ]; then 
	echo -e "${RED} Updating Sodexis 10 Repolist" 
	echo /opt/odoo/10.0-SOD/dev_tools/git_update/git_update.sh sodexis_repolist
else
	echo -e "${NC} please, choose from above repos."
fi




#elif [];then
# /opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist

#Repolist_name='Repolist Conservation 10'  
#echo "********************** $Repolist_name ****************************************"
#YELLOW='\033[1;33m'
#LGREEN='\033[1;32m'
#NC='\033[0m' # No Color
#echo -e " ${YELLOW}RepoList${NC} Updating"
##source  ~/virt/10.0-JOD/bin/activate.csh 
# /opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist
#echo " "
#echo "**********************  Repolist updated ************************"
#echo " "

exec bash
