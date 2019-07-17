echo netbsd wifi and installer

disklabel wd0
fdisk wd0 
disklabel sd1

mkdir /usr/local
mkdir /usr/local/bin/


ifconfig urtwn0 up 
ifconfig urtwn0 list scan

which wpa_supplicant

/usr/sbin/wpa_supplicant -B -D bsd -i urtwn0 -c /etc/wpa_supplicant.conf
sleep 5
dhclient urtwn0

ifconfig 



exit
/sbin/newfs -V2 -O 1   -b 32768 -f 4096 /dev/rwd0a
echo use bios console
echo min ins
echo install image media
echo progress -zf /i386/... 


echo go to custom to get the min, with man and comp with gcc
echo you will need comp.tgz to compile with gcc 
 

echo configure the network 


echo add user
echo pass root
echo sshd ok on yes

echo h to configure the network under bin installation above one
echo are they ok, yes
echo yes to get into /etc

echo enable bin instlalation, ftp.NetBSD.org on base pub/pkgsrc/packages/NetBSD 
echo to packge directory  /i386/8.1/All 
echo user ftp

echo so pkg_add http://ftp.. pub pkgsrc
echo  /usr/pkg/bin/pkgin -y update  to get pkg_summary.bz2

echo your system is now configured to use pkgin to install binary packages, to install a package, run pkgin install packagename 



