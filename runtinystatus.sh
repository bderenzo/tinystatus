#!/usr/bin/env sh

/srv/tinystatus /srv/checks.csv /srv/incidents.txt /srv/customfooter.html > /var/www/html/index.tmp
mv /var/www/html/index.tmp /var/www/html/index.html
