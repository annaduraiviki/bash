#!/bin/bash  
echo "This is a shell script"  
ls -lah  
echo "Running Script"  
Repolist_name='Repolist Trillium 10'  
echo "********************** $Repolist_name ****************************************"
#source  ~/virt/10.0-JOD/bin/activate.csh 
 /opt/odoo/10.0-TR/dev_tools/git_update/git_update.sh trillium_repolist
echo " "
echo "********************** Repolist updated ************************"
echo " "
exec bash
