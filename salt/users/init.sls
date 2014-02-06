# File: /srv/salt/users/init.sls:
martin:
  user.present:
    - fullname: Martin Smith
    - shell: /bin/bash
    - home: /home/martin
    - createhome: True
    - groups:
      - sudo
  ssh_auth: 
    - present
    - require: 
      - user: martin
    - user: martin
    - source: salt://files/id_rsa_martin.pub



/etc/sudoers:
 file.managed:
  - user: root
  - group: root
  - mode: 0440
  - source: salt://files/sudoers

