FROM alpine:3.14.1

RUN apk update && apk add bash curl netcat-openbsd nginx busybox-initscripts

EXPOSE 80
ADD Docker/run.sh /run.sh
RUN mkdir -p /tinystatus/
ADD tinystatus /usr/local/bin/tinystatus
RUN chmod +x /run.sh /usr/local/bin/tinystatus
ADD checks.csv /tinystatus/checks.csv
ADD incidents.txt /tinystatus/incidents.txt
RUN echo '*  *  *  *  *    /run.sh > /var/log/run.log' > /etc/crontabs/root
RUN touch /var/log/run.log
RUN mkdir -p /run/nginx/
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
ADD Docker/nginx.conf /etc/nginx/nginx.conf

CMD [ "sh", "-c", "crond && nginx -g 'daemon off;'" ]

