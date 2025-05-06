#!/bin/bash
#echo "\{ \"token\"\: \"" > config.json
#echo $DISCORD_BOT_TOKEN >> config.json
#echo "\"\}"
printf "{\n\t\"token\": \"%s\"\n}" $DISCORD_BOT_TOKEN
chmod 400 config.json
unset DISCORD_BOT_TOKEN
