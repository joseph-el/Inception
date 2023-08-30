#!/bin/bash

FILES=(/Users/joseph/Desktop/repositories/42_projects/Inception/push/docker-compose.yaml /Users/joseph/Desktop/repositories/42_projects/Inception/push/docker-compose.yaml)
FILE1=/Users/joseph/Desktop/repositories/42_projects/Inception/push/docker-compose.yaml
FILE2=/Users/joseph/Desktop/repositories/42_projects/Inception/push/docker
CPPCODE=/Users/joseph/Desktop/repositories/42_projects/Inception/push/codeC++.sh
PROGRESS_BAR=/Users/joseph/Desktop/repositories/42_projects/Inception/push/progress_bar.sh

chmod +x $CPPCODE
chmod +x $PROGRESS_BAR

source $CPPCODE

while true
do
  RANDOM_NUB=$(( ( RANDOM % 6 ) + 1 ))
  for file_path in "${FILES[@]}"
  do
    case $RANDOM_NUB in
    1) echo "$snippet1" >> $file_path;;
    2) echo "$snippet2" >> $file_path;;
    3) echo "$snippet3" >> $file_path;;
    4) echo "$snippet4" >> $file_path;;
    5) echo "$snippet5" >> $file_path;;
    6) echo "$snippet6" >> $file_path;;
    esac

  done
    clear
    git add .
    git commit -m "bash ..."
    git push
    cat /dev/null > $FILE1
    cat /dev/null > $FILE2
    clear
    source $PROGRESS_BAR

done
