#!/bin/sh
set -e
: "${PORT:=8080}"
: "${UUID:?missing UUID env var}"
: "${WS_PATH:=/ws}"
export PORT UUID WS_PATH
envsubst < /etc/xray/config.template.json > /etc/xray/config.json
exec /usr/local/bin/xray run -config /etc/xray/config.json
