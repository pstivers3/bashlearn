#!/bin/bash

for dir in $(ls -1 | grep 'logstash-' | grep -v 'tar'); 
do
    echo "tar -czf ${dir}.tar.gz $dir" 
    tar -czf ${dir}.tar.gz $dir 

    echo "rm -rf $dir"
    rm -rf $dir
done

