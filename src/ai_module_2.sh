#!/bin/bash


$index 
while IFS= read -r line
do
  index=$[ $index + 1 ]
  if [ "$index" = "$line" ]; then
    echo 'LOADING A SUBMODULE '"$line"' WAS SUCCESSFUL'
  else
    echo 'ERROR!ERROR!ERROR!ERROR! An error occurred while loading the submodule '"$index"
    exit 1
  fi
done <  important_data_for_ai_module_2.txt
if [ "$index" = 5 ];then
  echo 'LOADING A SUBMODULE '"$line"' WAS SUCCESSFUL'
else
  echo 'ERROR!ERROR!ERROR!ERROR! Several modules are missing... '"$index"
  exit 1
fi

echo 'MODULE 2 successfully loaded!'
exit 0
