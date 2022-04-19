#!/bin/sh


    
  
//    scp -i root/pun-off-mumbai-kp.pem -r /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/ ec2-user@13.235.245.21:/var/www/html
    
//    ssh -1 /path/keypair.pem username@public_dns_name
    
     ssh -1 /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/pun-off-mumbai-kp.pem ec2-user@13.235.245.21
    
     
    exit
