#!/bin/bash

while (true) 
do
    index=$[ $index + 1 ]
    echo 'Bypass!'
    echo 'Doors are being checked...'
    echo 'Checking the degree of door closure #'$[ $index % 16 ]'. Secret access code: '$[ RANDOM % $index ]'.'
    echo 'Degree of closure: 100.00%.'
    if [ $[ RANDOM % 3 ] -eq 0 ]; then
       echo
       echo 'additional verification.'
       echo '1...'
       echo '2...'
       sleep 1
       echo '3...'
       sleep 1
       echo '4...'
       sleep 2
       echo '5...'
       echo 'Verification completed successfully.'
    fi
    sleep $[ RANDOM % 10 + 1 ];
done;
