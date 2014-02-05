# File: /srv/salt/top.sls:
base:
  '*web':
    - httpd
  '*':
    - edit.vim

