# File: /srv/pillar/packages.sls:
pkg:
  {% if grains['os_family'] == 'Debian' %}
  httpd: apache2
  git: git-core
  vim: vim-nox
  {% elif grains['os_family'] == 'RedHat' %}
  httpd: httpd
  git: git
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Arch' %}
  httpd: apache
  git: git
  vim: vim
  {% endif %}


