#FROM fedora:24
FROM ubuntu:20.04

#RUN dnf install certbot -y && dnf clean all
RUN apt update && apt install -y certbot python3-certbot-nginx
#RUN grep -R acme-v02 /etc/letsencrypt/
RUN certbot renew --apache --agree-tos --force-renewal --server https://acme-v02.api.letsencrypt.org/directory

COPY secret-patch-template.json /
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]