#!/bin/sh

ssh -tt ec2-user@13.235.245.21<<EOF
    cd ~/Jenkins-Ang-Demo
    git pull origin main
    $ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
    . ~/.nvm/nvm.sh
    nvm install node
    nvm install v10.11.0
    npm install
    npm install pm2 -g
    
    pm2 restart ecosystem.config.js
     
    exit
