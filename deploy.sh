#! /bin/bash
if [ $# -lt 1 ]
	then
		echo 'No commit message given'
		exit
fi
MSG=$1
git checkout develop
cd src
hugo
cd ..
cp ./src/CNAME .
git add .
git commit -m "$MSG"
git push origin master
