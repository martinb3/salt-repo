# File: /srv/pillar/top.sls:
base:
  '*':
    - users
    - packages
    - sshd_config
