# File: /srv/salt/top.sls:
base:
  '*web':
    - httpd
  '*':
    - vim
    - users
