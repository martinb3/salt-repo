# File: /srv/salt/edit/vim.sls:
vim-nox:
  pkg:
    - installed
    - name: {{ pillar['pkg']['vim'] }}


