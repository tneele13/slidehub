#!/bin/bash

ip="$(hostname -I)"
url="http://185.107.213.80:8080/screen?screen.id=34"
live="slidehub.delphinity.nl/piIp?ip=$ip"
test="http://185.107.213.80:8080/piIp?ip=$ip"

chromium-browser --kiosk  $test

