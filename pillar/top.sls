# File: /srv/pillar/top.sls:
base:
  '*':
    - packages
    - sshd_config
