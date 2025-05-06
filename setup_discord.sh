#!/bin/bash
printf "{\n\t\"token\": \"%s\"\n}" $DISCORD_BOT_TOKEN > config.json
chmod 400 config.json
unexport DISCORD_BOT_TOKEN
