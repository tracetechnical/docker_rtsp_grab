#!/bin/bash
/usr/sbin/lighttpd -D -f /lighttpd.conf &
if [ -n "$URL1" ]; then
  ffmpeg -rtsp_transport tcp -i "$URL1" -q:v 25 -r 1 -update 1 /tmp/www/snapshot1.jpg &
fi
if [ -n "$URL2" ]; then
  ffmpeg -rtsp_transport tcp -i "$URL2" -q:v 25 -r 1 -update 1 /tmp/www/snapshot2.jpg &
fi
if [ -n "$URL3" ]; then
  ffmpeg -rtsp_transport tcp -i "$URL3" -q:v 25 -r 1 -update 1 /tmp/www/snapshot3.jpg &
fi
if [ -n "$URL4" ]; then
  ffmpeg -rtsp_transport tcp -i "$URL4" -q:v 25 -r 1 -update 1 /tmp/www/snapshot4.jpg &
fi
echo "Started all, waiting"
tail -f /dev/null
