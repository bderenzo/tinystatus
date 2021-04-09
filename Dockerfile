FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update; apt-get upgrade -y; apt-get install -y tzdata net-tools inetutils-ping curl netcat cron lighttpd supervisor dnsutils

COPY tinystatus incidents.txt checks.csv crontab.txt supervisor.conf customfooter.html runtinystatus.sh /srv/

RUN crontab /srv/crontab.txt
RUN chmod 600 /etc/crontab

CMD ["supervisord","-c","/srv/supervisor.conf"]
