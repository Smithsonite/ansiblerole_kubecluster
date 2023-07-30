#! /bin/bash
netplan apply && shutdown --reboot 1 "System rebooting in 1 minute"
sleep 90