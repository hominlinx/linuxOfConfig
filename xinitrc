#!/bin/sh

#开机启动
gnome-settings-daemon &

gnome-powe-manager &

nm-applet --sm-disable &


