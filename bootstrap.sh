#!/bin/bash
wget -O - http://bootstrap.saltstack.org | sudo sh
service salt-minion stop
mkdir -p /srv
rm /srv/salt; ln -s `pwd`/srv/salt /srv/salt
rm /srv/pillar; ln -s `pwd`/srv/pillar /srv/pillar
# salt-call --local state.highstate
