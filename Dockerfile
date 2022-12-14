FROM alpine:3.16.0

RUN apk add --no-cache --update \
    samba-common-tools \
    samba-client \
    samba-server

COPY smb.conf /etc/samba/smb.conf

EXPOSE 139/tcp 445/tcp

CMD ["smbd", "--foreground", "--no-process-group"]
#CMD ["smbd", "--foreground", "--log-stdout", "--no-process-group"]
