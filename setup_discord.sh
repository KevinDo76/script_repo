#!/bin/bash
printf "{\n\t\"token\": \"%s\"\n}" $DISCORD_BOT_TOKEN > config.json
chmod 400 config.json
export DISCORD_BOT_TOKEN=""
