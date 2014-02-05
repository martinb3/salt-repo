#!/bin/bash
wget -O - http://bootstrap.saltstack.org | sudo sh
service salt-minion stop
mkdir -p /srv
rm /srv/salt; ln -s `pwd`/srv/salt /srv/salt
rm /srv/pillar; ln -s `pwd`/srv/pillar /srv/pillar

ln -s `pwd`/formulas/git/git `pwd`/srv/salt/git
ln -s `pwd`/formulas/vim/vim `pwd`/srv/salt/vim
ln -s `pwd`/formulas/users/users `pwd`/srv/salt/users
ln -s `pwd`/formulas/openssh/openssh `pwd`/srv/salt/openssh
ln -s `pwd`/formulas/screen/screen `pwd`/srv/salt/screen


# salt-call --local state.highstate
