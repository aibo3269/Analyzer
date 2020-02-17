#!/bin/bash

for dir in $(xrdfs root://cmseos.fnal.gov/ ls /store/user/abohenic/eos_files/ | xargs -n 1 basename)
do	    


   for file in $(xrdfs root://cmseos.fnal.gov ls /store/user/abohenic/eos_files/$dir/)
    do
       if [ ! -z $file ]
       then
	   xrdfs root://cmseos.fnal.gov rm $file
       fi
    done
done

