FROM ubuntu:20.04

ENV TZ=Australia/Sydney
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update; apt-get install -y net-tools inetutils-ping curl netcat cron lighttpd supervisor dnsutils

COPY tinystatus incidents.txt checks.csv crontab.txt supervisor.conf customfooter.html runtinystatus.sh /srv

RUN crontab /srv/crontab.txt
RUN chmod 600 /etc/crontab

CMD ["supervisord","-c","/srv/supervisor.conf"]
