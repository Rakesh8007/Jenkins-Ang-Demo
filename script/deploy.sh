#!/bin/sh

ssh -tt ec2-user@13.235.245.21<<EOF
    cd ~/cicd-pipeline
    git pull origin main
    $ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
    source ~/.nvm/nvm.sh
    nvm install v10.11.0
    npm install
    npm install pm2 -g
    
    pm2 restart ecosystem.config.js
     
    exit