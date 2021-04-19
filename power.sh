#!/bin/bash

check=$(echo 'pow 0' | cec-client -s -d 1);

#get last word of command output, this is 'on' or 'off'
status=$(echo -n $check | awk '{print $NF}');
if [ $status == "on" ]; then
  echo 'standby 0' | cec-client -s -d 1
else
  echo 'on 0' | cec-client -s -d 1
fi

