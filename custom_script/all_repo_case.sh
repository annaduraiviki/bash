#!/bin/bash  
echo ""
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " "
echo "    This is a shell script for Updating repolists ODOO (V10) by Viki (2017)"
echo " "
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"  
#ls -lah

YELLOW='\033[1;33m'
NC='\033[0m'
RED='\033[0;31m'
DMAGENTA='\033[1;35m'
echo ""
echo ""  
echo "Running Script"
echo " "
echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " "
echo -e "${DMAGENTA} Select 1 for CT"
echo -e "${DMAGENTA} Select 2 for TR"
echo -e "${DMAGENTA} Select 3 for SOH"
echo -e "${DMAGENTA} Select 4 for JOD"
echo -e "${DMAGENTA} Select 5 for SOD"
echo -e "${DMAGENTA} Select 6 for UPDATE ALL REPOS AT ONCE"
echo ""
echo -e "${NC} +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"


echo -e " ${NC} Choose an option from above"
read VALUE
case $VALUE in 

	1) echo -e " ${YELLOW} ****** 10-CT Repolist is updating *******" 
		/opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist ;;
	2) echo -e " ${YELLOW} ****** 10-TR Repolist is updating *******" 
		/opt/odoo/10.0-TR/dev_tools/git_update/git_update.sh trillium_repolist ;;
	3) echo -e " ${YELLOW} ****** 10-SOH Repolist is updating *******" 
		/opt/odoo/10.0-SOH/dev_tools/git_update/git_update.sh sohre_repolist ;;
	4) echo -e " ${YELLOW} ****** 10-JOD Repolist is updating ********" 
		/opt/odoo/10.0-JOD/dev_tools/git_update/git_update.sh jodee_repolist ;;
	5) echo -e " ${YELLOW} ***** 10-SOD Repolist is updating ********" 
		/opt/odoo/10.0-SOD/dev_tools/git_update/git_update.sh sodexis_repolist ;;
	6) echo -e " ${YELLOW} +++++++++++++++ 10-ALL Repolists are updating.. It took extra time coz of all repo updation +++++++++++++++"
		echo -e " ${DMAGENTA} ********* Updating 10- CONSERVATION_REPO ********" 
		/opt/odoo/10.0-CT/dev_tools/git_update/git_update.sh conservation_repolist 
		echo -e " ${NC} ******** Completed 10- CONSERVATION_REPO ********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${DMAGENTA} ******** Updating 10- TRILLIUM_REPO ************"
		/opt/odoo/10.0-TR/dev_tools/git_update/git_update.sh trillium_repolist 
		echo -e " ${NC} ******** Completed 10- TRILLIUM_REPO ***********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${DMAGENTA} ******** Updating 10- SOHRE_REPO *************"
		/opt/odoo/10.0-SOH/dev_tools/git_update/git_update.sh sohre_repolist 
		echo -e " ${NC} ******** Completed 10- SOHRE_REPO ***********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${NC}             ******** *** ********"
		echo -e " ${DMAGENTA} ******** Updating 10- JODEE_REPO ************"
		/opt/odoo/10.0-JOD/dev_tools/git_update/git_update.sh jodee_repolist 
		echo -e " ${NC} ******** Completed 10- JODEE_REPO *********"
		echo -e " ${NC}            ******** *** ********"
		echo -e " ${NC}            ******** *** ********"
		echo -e " ${DMAGENTA} ******** Updating 10- SODEXIS_REPO ************"
		/opt/odoo/10.0-SOD/dev_tools/git_update/git_update.sh sodexis_repolist 
		echo -e " ${DMAGENTA} ******* Completed 10- SODEXIS_REPO **********"
		echo -e " ${NC}                 ******** *** ********"
		echo -e " ${NC}                 ******** *** ********"
		echo -e " ${DYELLOW} ******** ALL REPOS UPDATION Completed ********" 
		echo -e " ${NC}                 ******** *** ********" 
		echo -e " ${DYELLOW}             ******** ** *******" 
		echo -e " ${NC}                   ******* * *******" ;;
	*) echo -e " ${RED} INVALID REPOLIST. please select appropriate value" ;;


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
