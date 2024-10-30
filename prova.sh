#!/bin/bash
for i in `git branch | tr -s ' ' | tr -d '*'` 
do 
	VAL=`git branch -r | grep /origin/$i`
	if [  "$VAL" == "" ] 
	then 
		git push --set-upstream origin $i 
	else 
		git push origin $i 
	fi 
done
