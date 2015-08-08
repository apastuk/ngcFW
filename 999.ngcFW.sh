#!/bin/sh
ip=`esxcli network ip interface ipv4 get`
eval $(echo $ip | awk '{print $19}' | awk '{print "IP1="$1";IP2="$2";IP3="$3";IP4="$4}' FS=.)
 
#Configure firewall
echo " Configuring Firewall..--allowed-all false"
esxcli network firewall ruleset set --ruleset-id=sshServer --allowed-all false
esxcli network firewall ruleset set --ruleset-id=sshClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=nfsClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=nfs41Client --allowed-all false
esxcli network firewall ruleset set --ruleset-id=dhcp --allowed-all false
esxcli network firewall ruleset set --ruleset-id=dns --allowed-all false
esxcli network firewall ruleset set --ruleset-id=snmp --allowed-all false
esxcli network firewall ruleset set --ruleset-id=ntpClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=CIMHttpServer --allowed-all false
esxcli network firewall ruleset set --ruleset-id=CIMHttpsServer --allowed-all false
esxcli network firewall ruleset set --ruleset-id=CIMSLP --allowed-all false
esxcli network firewall ruleset set --ruleset-id=iSCSI --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vpxHeartbeats --allowed-all false
esxcli network firewall ruleset set --ruleset-id=updateManager --allowed-all false
esxcli network firewall ruleset set --ruleset-id=faultTolerance --allowed-all false
esxcli network firewall ruleset set --ruleset-id=webAccess --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vMotion --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vSphereClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=activeDirectoryAll --allowed-all false
esxcli network firewall ruleset set --ruleset-id=NFC --allowed-all false
esxcli network firewall ruleset set --ruleset-id=HBR --allowed-all false
esxcli network firewall ruleset set --ruleset-id=ftpClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=httpClient --allowed-all false
esxcli network firewall ruleset set --ruleset-id=gdbserver --allowed-all false
esxcli network firewall ruleset set --ruleset-id=DVFilter --allowed-all false
esxcli network firewall ruleset set --ruleset-id=DHCPv6 --allowed-all false
esxcli network firewall ruleset set --ruleset-id=DVSSync --allowed-all false
esxcli network firewall ruleset set --ruleset-id=syslog --allowed-all false
esxcli network firewall ruleset set --ruleset-id=IKED --allowed-all false
esxcli network firewall ruleset set --ruleset-id=WOL --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vSPC --allowed-all false
esxcli network firewall ruleset set --ruleset-id=remoteSerialPort --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vprobeServer --allowed-all false
esxcli network firewall ruleset set --ruleset-id=rdt --allowed-all false
esxcli network firewall ruleset set --ruleset-id=cmmds --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vsanvp --allowed-all false
esxcli network firewall ruleset set --ruleset-id=rabbitmqproxy --allowed-all false
esxcli network firewall ruleset set --ruleset-id=ipfam --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vvold --allowed-all false
esxcli network firewall ruleset set --ruleset-id=iofiltervp --allowed-all false
esxcli network firewall ruleset set --ruleset-id=esxupdate --allowed-all false
esxcli network firewall ruleset set --ruleset-id=vSFW-UW --allowed-all false
esxcli network firewall ruleset set --ruleset-id=netCP --allowed-all false
esxcli network firewall ruleset set --ruleset-id=fdm --allowed-all false
esxcli network firewall ruleset set --ruleset-id=autodeploy --allowed-all false
 
echo " Configuring Firewall..--ip-address $IP1.$IP2.$IP3.0/24"
esxcli network firewall ruleset allowedip add --ruleset-id=sshServer --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=sshClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=nfsClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=nfs41Client --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=dhcp --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=dns --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=snmp --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=ntpClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=CIMHttpServer --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=CIMHttpsServer --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=CIMSLP --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=iSCSI --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vpxHeartbeats --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=updateManager --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=faultTolerance --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=webAccess --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vMotion --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vSphereClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=activeDirectoryAll --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=NFC --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=HBR --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=ftpClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=httpClient --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=gdbserver --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=DVFilter --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=DHCPv6 --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=DVSSync --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=syslog --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=IKED --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=WOL --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vSPC --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=remoteSerialPort --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vprobeServer --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=rdt --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=cmmds --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vsanvp --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=rabbitmqproxy --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=ipfam --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vvold --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=iofiltervp --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=esxupdate --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vSFW-UW --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=netCP --ip-address $IP1.$IP2.$IP3.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=fdm --ip-address $IP1.$IP2.$IP3.0/24
#
echo " Configuring Firewall..--ip-address 192.168.1.0/24"
esxcli network firewall ruleset allowedip add --ruleset-id=vpxHeartbeats --ip-address 192.168.1.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=faultTolerance --ip-address 192.168.1.0/24
esxcli network firewall ruleset allowedip add --ruleset-id=vMotion --ip-address 192.168.1.0/24

