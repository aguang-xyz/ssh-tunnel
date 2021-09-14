FROM ubuntu:18.04

ENV REMOTE_USER=root \
    REMOTE_HOST=example.com \
    REMOTE_PORT=8080 \
    LOCAL_PORT=8080

RUN apt-get update && apt-get install -y ssh

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]