#!/bin/bash

# operates on gzipped log files, with timestamp in UTC
# output log filename and hours for which there are no log entries 

echo; echo "filename and hours for which there are no log entries"; echo
echo "   filename      UTC  PST"
sleep 1
for file in $(ls -1 | grep 'gz'); do
  for hour in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24; do 
    a=$(zcat $file | grep "T${hour}:")
    if [ -z "$a" ]; then
      utc=$(( 10#$hour - 8 ))
      if (( $utc < 0 )); then
        utc=$(( 24 + utc ))
      fi
    echo "$file   $hour   $utc"
    fi 
  done
  echo
done

