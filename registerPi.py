#!/usr/bin/python3

import requests
import os

response = requests.get('http://185.107.213.80:8080/createBerry?ip=192.168.1.104')
if response.status_code == 200:
  port = response.json()['pi']['poort']
  os.system('sudo systemctl stop slidehubtunnel.service')
  os.system('sudo systemctl disable slidehubtunnel.service')
  os.system('sudo cp slidehubtunnel.service /etc/systemd/system/slidehubtunnel.service')
  command = f"sudo sed -i 's/PORT/{port}/g' /etc/systemd/system/slidehubtunnel.service"
  os.system(command)
  os.system('sudo systemctl daemon-reload')
  os.system('sudo systemctl enable slidehubtunnel.service')
  os.system('sudo systemctl start slidehubtunnel.service')
os.system('/home/pi/slidehub.sh')
