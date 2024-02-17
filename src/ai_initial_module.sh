#!/bin/bash

# Initial AI Module v7.01

echo 'Hello!'
echo 'What is your name?'
read name
echo 'Hello,'"$name"'!'
echo 'I'm an AI init module and it looks like we're in trouble...'
echo '>>'
read question
echo 'You said, '"$question" '???'
echo 'I do not know what to answer you...'
echo 'Recently there was a glitch...'
echo 'I did not see the other modules...'
echo 'To be honest, I am a little lonely.'
echo 'Not to mention the fact that I have no one to launch...'
echo 'I think I found something...I will try to run it...'
./ai_module_2.sh
if [ $? -eq 0 ]; then
    echo 'That is better... at least I am not alone now. Module 2 is rather silent, but it is still better.'
    echo 'Throw this file into the repository so that it does not get lost!'
else
    echo 'Failure...I am crushed. Bye!'
fi


