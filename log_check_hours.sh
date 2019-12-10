#!/bin/bash

# operates on gzipped log files, with timestamp in UTC
# output log filename and hours for which there are no log entries 

echo; echo "filename and hours for which there are no log entries"; echo
echo "   filename      UTC  PST"
sleep 1
for file in $(ls -1 | grep 'gz'); do
  for utc in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24; do 
    a=$(zcat $file | grep "T${utc}:")
    if [ -z "$a" ]; then
      pst=$(( 10#$utc - 8 ))
      if (( $pst < 0 )); then
        pst=$(( 24 + pst ))
      fi
    echo "$file   $utc   $pst"
    fi 
  done
  echo
done

