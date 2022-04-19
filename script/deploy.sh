#!/bin/sh


    
  
    scp -i root/pun-off-mumbai-kp.pem -r /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/ ec2-user@13.235.245.21:/var/www/html
    
     
    exit
