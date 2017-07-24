#!/bin/bash  
echo "This is a shell script"  
ls -lah  
echo "Running Script"  
Repolist_name='Repolist Conservation 10'  
echo "********************** $Repolist_name ****************************************"
YELLOW='\033[1;33m'
LGREEN='\033[1;32m'
NC='\033[0m' # No Color
echo -e " ${YELLOW}RepoList${NC} Updating"
#source  ~/virt/10.0-JOD/bin/activate.csh 
 /opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist
echo " "
echo "**********************  Repolist updated ************************"
echo " "
exec bash
