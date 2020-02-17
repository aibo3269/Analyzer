#!/bin/bash

for dir in $(xrdfs root://cmseos.fnal.gov/ ls /store/user/abohenic/eos_files/ | xargs -n 1 basename)
do	    
    string=$(xrdfs root://cmseos.fnal.gov ls /store/user/abohenic/eos_files/$dir/)
    set -- $string
    if [ ! -z $1 ]
    then
	hadd ${dir}.root $(xrdfs root://cmseos.fnal.gov ls -u /store/user/abohenic/eos_files/$dir/)
	echo $dir
    fi
done

