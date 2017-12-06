#!bin/bash
SIP=$(/usr/sbin/asterisk -r -x 'sip show peers' | grep -nrw beeline | awk '{print $1,$2,$5}' | cut -d ":" -f2)
>/home/zabbix/SIP.log
if [ "$SIP" = "beeline 46.227.186.229 OK" ]; then
    echo "$SIP" >> /home/zabbix/SIP.log
else
    echo "$SIP" >> /home/zabbix/SIP.log
fi
exit