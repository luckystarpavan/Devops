#! /bin/bash
apt-get install httpd -y
systemctl start httpd 
chkconfig httpd on
echo > "<h1> Deployed by Terraform </h1>" /var/www/html/index.html
EOF
