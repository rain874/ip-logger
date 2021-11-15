#!/bin/sh
echo "-----------------------------------------------------------------------"
echo "------------  IP-logger, Copyright (c) 2021 		   ------------------"
echo "------------  Version 0.1                            ------------------"
echo "------------                       Rainer Schmitz    ------------------"
echo "------------                   All right reserved.   ------------------"
echo "-----------------------------------------------------------------------"

# timstamp
datum=$(date +'%d.%m.%Y %H:%M:%S | ')

# curl ipv4
cmd1="curl -a https://ipv4.icanhazip.com/"
result1=`$cmd1`

# curl ipv4 
cmd2="curl -a https://ipv6.icanhazip.com/"
result2=`$cmd2`

# curl auführen und in logfile speichern
echo $datum $result1 "|" $result2 >> /var/log/ip-logger.log
