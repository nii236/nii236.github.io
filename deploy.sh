#! /bin/bash
if [ $# -lt 1 ]
	then
		echo 'No commit message given'
		exit
fi
MSG=$1
git checkout develop
rm -rf public
hugo
git add .
git commit -m "$MSG"
git push origin develop && git subtree push --prefix public origin master
