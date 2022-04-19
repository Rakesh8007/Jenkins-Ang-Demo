#!/bin/sh

ssh -tt ec2-user@13.235.245.21<<EOF
    cd ~/Jenkins-Ang-Demo
    scp -i /var/lib/jenkins/workspace/ngautomation/dist/automationdemo ~/Jenkins-Ang-Demo1 
    $ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
    source ~/.nvm/nvm.sh
    nvm install node
    nvm install v10.11.0
    npm install
    npm install pm2 -g
    
    pm2 restart 
     
    exit
