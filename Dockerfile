FROM alpine:3.20
RUN apk add --no-cache ca-certificates curl unzip gettext \
 && mkdir -p /usr/local/bin /etc/xray \
 && curl -L -o /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/download/v26.9.30/Xray-linux-64.zip \
 && unzip -o /tmp/xray.zip -d /usr/local/bin \
 && rm /tmp/xray.zip \
 && chmod +x /usr/local/bin/xray
COPY config.template.json /etc/xray/config.template.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
