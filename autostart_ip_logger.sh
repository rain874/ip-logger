#!/bin/sh

filename="ip-logger.service"
> /etc/systemd/system/ip-logger.service

echo -e "[Unit]" >> /etc/systemd/system/ip-logger.service
echo -e "Description=ip-logger" >> /etc/systemd/system/ip-logger.service
echo -e "After=network-online.target" >> /etc/systemd/system/ip-logger.service
echo -e "Wants=network-online.target" >> /etc/systemd/system/ip-logger.service
echo -e "[Service]" >> /etc/systemd/system/ip-logger.service
echo -e "Type=simple" >> /etc/systemd/system/ip-logger.service
echo -e "ExecStart=${PWD}/ip-logger.sh" >> /etc/systemd/system/ip-logger.service
echo -e "[Install]" >> /etc/systemd/system/ip-logger.service
echo -e "WantedBy=multi-user.target" >> /etc/systemd/system/ip-logger.service
		

systemctl enable $filename
systemctl start $filename

# catch status code  
#systemctl status $filename 