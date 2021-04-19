#!/bin/bash

echo pulling git...
git pull
echo copy autostart to lxsession...
sudo cp ~/slidehub/autostart /etc/xdg/lxsession/LXDE-pi/autostart
sudo cp ~/slidehub/autostart /etc/xdg/lxsession/LXDE/autostart
echo done!