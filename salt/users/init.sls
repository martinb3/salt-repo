# File: /srv/salt/users/init.sls:
martin:
  user.present:
    - fullname: Martin Smith
    - shell: /bin/bash
    - home: /home/martin
    - createhome: True
    - groups:
      - admin
      - sudoers
  ssh_auth: 
    - present
    - user: martin
    - source: salt://files/id_rsa_martin.pub
