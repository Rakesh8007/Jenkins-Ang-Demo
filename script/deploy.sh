#!/bin/sh
scp -i root/pun-off-mumbai-kp.pem -r /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/ ec2-user@65.0.96.186:/var/www/html
sudo systemctl restart httpd
#ssh -1 /path/keypair.pem username@public_dns_name
ssh -i /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/pun-off-mumbai-kp.pem ec2-user@65.0.96.186
#sshpass -p admin ssh -T /var/lib/jenkins/workspace/ngautomation/dist/automationdemo/pun-off-mumbai-kp.pem ec2-user@13.235.245.21
exit
