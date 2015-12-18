#!/bin/bash
#scrip name:GetPID.sh
user=$1 
process_name=$2 
pid=`ps -u $user | grep $process_name | grep -v 'grep' | grep -v 'vi' | grep -v 'tail' | grep -v 'start' | grep -v 'stop' | sed -n 1p | awk '{print $1}'` 
echo $pid
