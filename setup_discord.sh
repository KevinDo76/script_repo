#!/bin/bash
rm -f config.json
rm -rf ../repo
printf "{\n\t\"token\": \"%s\"\n}\n" $DISCORD_BOT_TOKEN > config.json
chmod 400 config.json
mkdir ../repo
git clone https://github.com/KevinDo76/rotbot_repo.git ../repo
mv -f ../repo/src/* ./
ollama serve &
ollama pull qwen3:4b
node index.js
