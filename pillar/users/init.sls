# File: /srv/pillar/users/init.sls:
users:
  martin:
    sudouser: True
    sudo_rules:
      - martin ALL=(ALL:ALL) ALL
    groups:
      - admin

