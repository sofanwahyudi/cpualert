#!/bin/bash
# Shell script to monitor or watch the high cpu-load
# It will send an email to $ADMIN, if the (cpu load is in %) percentage
# of cpu-load is >= 70%
# If you have any suggestion or question please email to aravikumar48(yet)gmail.com
HOSTNAME=`hostname`
LOAD=70.00
CAT=/bin/cat
MAILFILE=/tmp/mailviews
MAILER=/bin/mail
mailto="aurora.an98@gmail.com"
CPU_LOAD=`sar -P ALL 1 2 |grep 'Average.*all' |awk -F" " '{print 100.0 -$NF}'`
if [[ $CPU_LOAD > $LOAD ]];
then
PROC=`ps -eo pcpu,pid -o comm= | sort -k1 -n -r | head -1`
echo "Please check your processess on ${HOSTNAME} the value of cpu load is $CPU_LOAD % & $PROC" > $MAILFILE
$CAT $MAILFILE | $MAILER -s "CPU Load is $CPU_LOAD % on ${HOSTNAME}" $mailto
fi
