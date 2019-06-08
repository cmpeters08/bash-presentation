#!/usr/bin/bash

##
# This script is to create multiple sql statements and save them individually
# to a directory
#

CUST_ID_LIST=1,2,42,9001

echo -e "******** \\nSql directory before: " 
ls -all ./sql-statements/
echo -e "********"

for id in ${CUST_ID_LIST//,/ }; do

   echo -e "UPDATE EXAMPLE.CUSTOMER_TABLE \\nSET IS_EXAMPLE = \"Y\" \\nWHERE CUST_ID = $id" > ./sql-statements/update-$id.sql

done

echo -e "********** \\nSql dir after: "
ls -all ./sql-statements
echo -e "********"
 #> sql-statements/update-$1.sql