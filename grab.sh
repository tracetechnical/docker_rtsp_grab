#!/bin/bash
/usr/sbin/lighttpd -D -f /lighttpd.conf &
if [ -n "$URL1" ]
  url1=$URL1
  ffmpeg -loglevel panic -y -i $url1 -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 /tmp/www/snapshot1.jpg
fi
if [ -n "$URL2" ]
url2=$URL2
ffmpeg -loglevel panic -y -i $url2 -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 /tmp/www/snapshot2.jpg
fi
if [ -n "$URL3" ]
url3=$URL3
ffmpeg -loglevel panic -y -i $url3 -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 /tmp/www/snapshot3.jpg
fi
if [ -n "$URL4" ]
url4=$URL4
ffmpeg -loglevel panic -y -i $url4 -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 /tmp/www/snapshot3.jpg
fi
