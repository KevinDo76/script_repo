#!/bin/bash
printf "{\n\t\"token\": \"%s\"\n}\n" $DISCORD_BOT_TOKEN > config.json
chmod 400 config.json
git clone https://github.com/KevinDo76/rotbot_repo.git ../
mv -r ../rotbot_repo/src/* ./
