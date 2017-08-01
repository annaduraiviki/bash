#!/bin/bash  
echo ""
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " "
echo "    This is a shell script for ACTIVATING ENVIRONMENT FOR PYTHON/ODOO (V10) by Viki (2017)"
echo " "
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"  
#ls -lah

YELLOW='\033[1;33m'
NC='\033[0m'
RED='\033[0;31m'
DMAGENTA='\033[1;35m'
LGREEN='\033[1;32m'
echo ""
echo ""  
echo "Running Script"
echo " "
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " "
echo -e "${DMAGENTA} Select 1 for CT"
#echo -e "${DMAGENTA} Select 2 for TR"
echo -e "${DMAGENTA} Select 2 for SOH"
echo -e "${DMAGENTA} Select 3 for JOD"
echo -e "${DMAGENTA} Select 4 for SOD"
#echo -e "${DMAGENTA} Select 6 for UPDATE ALL REPOS AT ONCE"
echo ""
echo -e "${NC} +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


echo -e " ${NC} Choose an option from above"
read VALUE
case $VALUE in 

	1) echo " ****** 10-CONSERVATION ENVIRONMENT is ACTIVATING *******" 
		source ~/virt/10.0-CT/bin/activate
		cd /opt/odoo/10.0-CT/10.0
		echo "----------------------------------------------------------------------------"
		echo "**********************  In CONSERVATION ENVIRONMENT ************************"
		echo -e " ${YELLOW} ENTER THE DB NAME"
		echo "----------------------------------------------------------------------------"
		read db_name
		echo "-----------------------------------------------------------------------------"
		echo -e " ${LGREEN} ENTER THE APP(s) NAME"
		echo "----------------------------------------------------------------------------"
		read app_name
		echo "----------------------------------------------------------------------------"
		./odoo-bin -c /etc/odoo/10.0-CT/odoo-server-10.0.conf -d $db_name -u $app_name
		echo " "
		echo "**********************  In CT ************************"
		echo " " ;;
	2) echo " ****** 10-SOHERE ENVIRONMENT is ACTIVATING *******" 
		source ~/virt/10.0-SOH/bin/activate
		cd /opt/odoo/10.0-SOH/10.0
		echo "----------------------------------------------------------------------------"
		echo "**********************  In SOHERE ENVIRONMENT ************************"
		echo -e " ${YELLOW} ENTER THE DB NAME"
		echo "----------------------------------------------------------------------------"
		read db_name
		echo "----------------------------------------------------------------------------"
		echo -e " ${LGREEN} ENTER THE APP(s) NAME"
		echo "----------------------------------------------------------------------------"
		read app_name
		echo "----------------------------------------------------------------------------"
		./odoo-bin -c /etc/odoo/10.0-SOH/odoo-server-10.0.conf -d $db_name -u $app_name
		echo " "
		echo "**********************  In SOH ************************"
		echo " " ;;
	3) echo " ****** 10-JODEE ENVIRONMENT is ACTIVATING *******" 
		source ~/virt/10.0-JOD/bin/activate
		cd /opt/odoo/10.0-JOD/10.0
		echo "----------------------------------------------------------------------------"
		echo "**********************  In CONSERVATION ENVIRONMENT ************************"
		echo -e " ${YELLOW} ENTER THE DB NAME"
		echo "----------------------------------------------------------------------------"
		read db_name
		echo "----------------------------------------------------------------------------"
		echo -e " ${LGREEN} ENTER THE APP(s) NAME"
		echo "----------------------------------------------------------------------------"
		read app_name
		echo "----------------------------------------------------------------------------"
		./odoo-bin -c /etc/odoo/10.0-JOD/odoo-server-10.0.conf -d $db_name -u $app_name
		echo " "
		echo "**********************  In JODEE ************************"
		echo " " ;;	
	4) echo " ****** 10-SODEXIS ENVIRONMENT is ACTIVATING*******" 
		source ~/virt/10.0-SOD/bin/activate
		cd /opt/odoo/10.0-SOD/10.0
		echo "----------------------------------------------------------------------------"
		echo "**********************  In SODEXIS ENVIRONMENT ************************"
		echo -e " ${YELLOW} ENTER THE DB NAME"
		echo "----------------------------------------------------------------------------"
		read db_name
		echo "----------------------------------------------------------------------------"
		echo -e " ${LGREEN} ENTER THE APP(s) NAME"
		echo "----------------------------------------------------------------------------"
		read app_name
		echo "----------------------------------------------------------------------------"
		./odoo-bin -c /etc/odoo/10.0-SOD/odoo-server-10.0.conf -d $db_name -u $app_name
		echo " "
		echo "**********************  In SODEXIS ************************"
		echo " " ;;		
	*) echo -e " ${RED} INVALID ENVIRONMENT. please select appropriate value" ;;


#		echo -e " ${DMAGENTA} Updating 10- CONSERVATION_REPO" 
#		/opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist 
#		echo -e " ${DMAGENTA} Completed 10- CONSERVATION_REPO"
#		echo -e " ${DMAGENTA} Updating 10- TRILLIUM_REPO"
#		/opt/odoo/10.0-TR/dev_tools/git_update/git_update.sh trillium_repolist 
#		echo -e " ${DMAGENTA} Completed 10- TRILLIUM_REPO"
#		echo -e " ${DMAGENTA} Updating 10- SOHRE_REPO"
#		/opt/odoo/10.0-SOH/dev_tools/git_update/git_update.sh sohre_repolist 
#		echo -e " ${DMAGENTA} Completed 10- SOHRE_REPO"
#		echo -e " ${DMAGENTA} Updating 10- JODEE_REPO"
#		/opt/odoo/10.0-JOD/dev_tools/git_update/git_update.sh jodee_repolist 
#		echo -e " ${DMAGENTA} Completed 10- SODEXIS_REPO"
#		/opt/odoo/10.0-SOD/dev_tools/git_update/git_update.sh sodexis_repolist 
#		echo -e " ${DMAGENTA} Updating 10- SODEXIS_REPO"
#		echo -e " ${DYELLOW} ALL REPOS UPDATION Completed"
esac

exec bash
