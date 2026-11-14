#!/bin/sh
sed -e "s/__UUID__/$UUID/" -e "s/__PORT__/${PORT:-10000}/" /config.template > /tmp/config.json
exec xray run -config /tmp/config.json
