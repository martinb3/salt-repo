# File: /srv/salt/httpd/init.sls:
httpd:
  pkg:
    - installed
    - name: {{ pillar['pkg']['httpd'] }}
    - watch_in:
      - service: httpd
  service:
    - running
    - name: {{ pillar['pkg']['httpd'] }}

php:
  pkg:
    - installed
    - name: {{ pillar['pkg']['php'] }}
    - watch_in:
      - service: httpd
