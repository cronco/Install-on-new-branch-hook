#! /bin/bash

prevHead=$1
currentHead=$2
checkoutType=$3

if [ "$checkoutType" == "0" ]; then exit; fi

prevBranch=`git name-rev --name-only $prevHead`
                      
prevPackageJson=`git show $prevBranch:package.json`
packageDiff=`diff -q package.json <(echo $prevPackageJson)`
if [ "$packageDiff" != "" ]
then 
  npm install
fi
