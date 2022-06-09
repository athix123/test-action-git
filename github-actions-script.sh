#!/bin/bash
if ! type pm2 > /dev/null
then
    sudo npm install -g pm2 && pm2 start ./dist/main.js --name test-action
else
    pm2 restart test-action
fi