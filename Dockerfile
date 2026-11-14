FROM alpine:3.20
RUN apk add --no-cache curl unzip ca-certificates \
 && curl -L -o /tmp/x.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
 && unzip /tmp/x.zip xray -d /usr/local/bin \
 && chmod +x /usr/local/bin/xray && rm /tmp/x.zip
COPY config.json /config.template
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
