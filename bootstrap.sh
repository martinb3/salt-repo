#!/bin/bash

# try me with 'wget https://raw2.github.com/martinb3/salt-repo/master/bootstrap.sh'

wget -O - http://bootstrap.saltstack.org | sudo sh
apt-get -y install salt-master git
yum -y install salt-master git
git config --global user.name "Martin Smith"
git config --global user.email "martin@mbs3.org"
mkdir -p /srv
cd /srv && git clone git@github.com:martinb3/salt-repo.git
ln -s /srv/salt-repo/salt /srv/salt
ln -s /srv/salt-repo/pillar /srv/pillar
