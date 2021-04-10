#!/bin/bash

#
# Date ......: 04/09/2021
# Developer .: Waldirio <waldirio@redhat.com>
# Purpose ...: The purpose of this script is to generate a csv report that will
#              present all the Content Hosts and the current state of Security,
#              Bugfix and Enhancement
#

LOG="/tmp/errata_report.csv"

# This command will bring some important information for this report
hammer --no-headers --csv host list --fields "Id,Name,Operating System,IP,Organization,Location,Security,Bugfix,Enhancement" --search '! ~ virt-who' >/tmp/$$

# The current date in the format m/d/yyyy
CURRENT_DATE=$(date +'%m/%d/%Y')

# The header of the report
echo  "Date,Id,Name,Operating System,Organization,Location,Security,Bugfix,Enhancement" | tee -a $LOG

while read line
do
  echo "$CURRENT_DATE,$line" | tee -a $LOG
done < /tmp/$$

## This will cleanup the temporary file
if [ -f /tmp/$$ ]; then
  echo "removing /tmp/$$"
  rm -rf /tmp/$$
fi
