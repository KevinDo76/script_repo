#!/bin/bash
rm -f config.json
rm -rf ../repo
printf "{\n\t\"token\": \"%s\"\n}\n" $DISCORD_BOT_TOKEN > config.json
chmod 400 config.json
mkdir ../repo
git clone https://github.com/KevinDo76/rotbot_repo.git ../repo
rm -rf ./src
mv -f ../repo/src ./
ollama serve &
sleep 1
ollama pull mistral-nemo:12b
node src/index.js
