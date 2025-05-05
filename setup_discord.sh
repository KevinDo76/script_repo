#!/bin/bash
echo $DISCORD_BOT_TOKEN > token.txt
chmod 400 token.txt
unset DISCORD_BOT_TOKEN
