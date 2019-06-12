#!/usr/bin/bash

##
# This script is to create multiple sql statements and save them individually
# to a directory
#

SLUUG_MEMBER_ID_LIST=1,2,42,9001

echo -e "******** \\nSql directory before: " 
ls -all ./sql-statements/
echo -e "********"

for id in ${SLUUG_MEMBER_ID_LIST//,/ }; do

   echo -e "UPDATE SLUUG_DATABASE.MEMBER_TABLE \\nSET IS_EXAMPLEi = \"Y\" \\nWHERE MEMBER_ID = $id" > ./sql-statements/update-$id.sql

done

echo -e "********** \\nSql dir after: "
ls -all ./sql-statements
echo -e "********"
 #> sql-statements/update-$1.sql