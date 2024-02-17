#!/bin/bash

count=0

echo 'Hello! You have launched an AI module that controls all the doors of the complex.'
echo 'Loading the necessary data files...'
if [ -d "door_management_files" ]; then
  uname_out="$(uname -s)"
  case "${uname_out}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
  esac
  
  cd door_management_files
  echo
  echo
  echo '-------------------------------------' 
  echo 'Loading door configuration files...'
  echo
  if [ -d "door_configuration" ]; then
    cd door_configuration
    for file in `find . -maxdepth 1 -type f -name "*.conf"`
    do
      wc -l $file;
      if [ "$machine" == "Mac" ]
      then
	      stat -f %z $file;
      else
        stat -c %s $file;
      fi
      
      cat $file;
      count=$[ $count + 1 ]
    done
    cd ..
  else
    echo "door_configuration: No such file or directory"
  fi

  echo
  echo
  echo '-------------------------------------' 
  echo 'Loading door map...'
  echo
  if [ -d "door_map" ]; then
    cd door_map
    cat door_map_1.1
    if [ $? -eq 0 ]; then
      count=$[ $count + 1 ]
    fi
    cd ..
  else
    echo "door_map: No such file or directory"
  fi

  echo
  echo  
  echo '-------------------------------------' 
  echo 'Reading door logs...'
  echo
  if [ -d "door_logs" ]; then
    cd door_logs
    for file in `find . -maxdepth 1 -type f -name "*.log"`
    do
      wc -l $file;
      if [ "$machine" == "Mac" ]
      then
	        stat -f %z $file;
      else
          stat -c %s $file;
      fi
      cat $file;
      count=$[ $count + 1 ]
    done
    cd ..
  else
    echo "door_logs: No such file or directory"
  fi

  cd ..
else
  echo "door_management_files: No such file or directory"
fi

echo
if [ $count -eq 34 ]; then
  ./ai_door_control.sh &
else
  echo "Error loading data... AI protocol interrupted."
fi
