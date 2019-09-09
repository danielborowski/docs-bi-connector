#!/bin/sh
#repoDir=$(pwd)
#snooty build $pwd || exit 0
#npm run build

repoDir=$(pwd)
cd ..
rootDir=$(pwd)
snootyDir=$rootDir/snooty

cp $repoDir/snooty/.env.production $repoDir
cp $repoDir/snooty/Makefile $repoDir

echo 'GATSBY_SITE="guides"' >> $repoDir/.env.production
echo 'PARSER_USER="sophstad"' >> $repoDir/.env.production
echo 'PARSER_BRANCH="master"' >> $repoDir/.env.production

cat $repoDir/.env.production

cp -r $snootyDir $repoDir
cd $repoDir
cd snooty
npm run build
echo "------"
ls
echo "------"

#GIT_BRANCH=blabla
#mkdir -p $repoDir/build/$GIT_BRANCH/html
#cp -r $repoDir/snooty/public $repoDir/build/$GIT_BRANCH/html