#!/bin/bash

# Set up script for the production server

WWW="/var/www"
ipaddr=$(hostname -I | awk '{print $2}')

# Initial Set up
echo "-------------------------------------------"
echo "    Production server project set up"
echo "-------------------------------------------"
echo "You will be prompted for your password to set up the directories"
echo ""
echo "enter the name of your project. ex. puddletowndesign.com"
read projectname
if [ -z "$projectname" ]; then
    echo "project name can not be empty"
    exit
fi

#Set new group
newgroup="${projectname%.*}"

sudo addgroup $newgroup
sudo adduser $USER $newgroup

# Set up the www directory
sudo mkdir $WWW/$projectname
sudo chgrp $newgroup $WWW/$projectname
sudo chmod 775 $WWW/$projectname
sudo chmod g+s $WWW/$projectname

# Make the web root
sg $newgroup "mkdir $WWW/$projectname/site"

# Set up the git production deployment directory -----------
sg $newgroup "mkdir $WWW/$projectname/origin.git"
cd $WWW/$projectname/origin.git
sg $newgroup "git init --bare"

# Set up the git origin code repository

## Set up post hooks in git repo
sg $newgroup "touch hooks/post-receive"

cat >$WWW/$projectname/origin.git/hooks/post-receive <<EOL
# !/bin/sh
git --work-tree=$WWW/$projectname/site --git-dir=$WWW/$projectname/origin.git checkout -f
EOL

chmod +x hooks/post-receive
cd ~

# Set up nginx configuration and reload nginx --------------

## Create the configuration file
sudo touch /etc/nginx/sites-available/$projectname

## Set up the configuration file
sudo sh -c "cat >/etc/nginx/sites-available/$projectname" <<-EOF
server {
	listen 80;
	listen [::]:80;
    listen 443 ssl;
    listen [::]:443 ssl;

	server_name $projectname www.$projectname;

	root /var/www/$projectname/site/dist;
	index index.html;

	location / {
		try_files \$uri \$uri/ =404;
	}
}
EOF

sudo ln -s /etc/nginx/sites-available/$projectname /etc/nginx/sites-enabled/$projectname

sudo service nginx reload


# Message about directories and remote git repos
cat << EOF

---------------------------------------------------
nginx is now running. Check $ipaddr or $projectname in your browser

webroot: $WWW/$projectname/site/dist
git repo: $WWW/$projectname/origin.git

Add testing repo to your local git repository:

        git remote add origin ssh://$USER@$ipaddr:$WWW/$projectname/test.git

To deploy your site to the production server use:

        git push origin master

Please log out and back in to finalize the new permssions for your user
EOF

exit