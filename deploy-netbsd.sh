

echo this script is without warranty.
pwd 
disklabel wd0 
mount  | grep target  

pwd 
ls -w *.tgz 
pwd 

echo Enter to Continue  to Install into wd0g
read kdsa

umount /dev/wd0g 
newfs  /dev/wd0g 
mkdir  /target 
mount  /dev/wd0g /target 

tar xvpfz base.tgz -C /target 
tar xvpfz comp.tgz -C /target 
tar xvpfz debug.tgz -C /target 
tar xvpfz etc.tgz -C /target 
tar xvpfz games.tgz -C /target 
tar xvpfz man.tgz -C /target 
tar xvpfz misc.tgz -C /target 
tar xvpfz modules.tgz -C /target 
tar xvpfz tests.tgz -C /target 
tar xvpfz text.tgz -C /target 
tar xvpfz xbase.tgz -C /target 
tar xvpfz xcomp.tgz -C /target 
tar xvpfz xdebug.tgz -C /target 
tar xvpfz xetc.tgz -C /target 
tar xvpfz xfont.tgz -C /target 
tar xvpfz xserver.tgz -C /target 

tar xvpfz kern-GENERIC.tgz  -C /target

echo "/dev/wd0g		/	ffs	rw		 1 1" > /target/etc/fstab 
echo "kernfs		/kern	kernfs	rw" >> /target/etc/fstab 
echo "ptyfs		/dev/pts	ptyfs	rw" >> /target/etc/fstab 
echo "procfs		/proc	procfs	rw" >> /target/etc/fstab 
echo "/dev/cd0a		/cdrom	cd9660	ro,noauto" >> /target/etc/fstab 
echo "tmpfs		/var/shm	tmpfs	rw,-m1777,-sram%25" >> /target/etc/fstab 


echo rc_configured=YES > /target/etc/rc.conf 
echo wscons=YES >> /target/etc/rc.conf 
echo keymap=de >> /target/etc/rc.conf 
echo hostname=netbsd >> /target/etc/rc.conf 
echo "# the keymap=de is into wscons, why actually, all should be into rc.conf"   >> /target/etc/rc.conf 
echo ifconfig_urtwn0=dhcp >> /target/etc/rc.conf 
echo sshd=YES >> /target/etc/rc.conf 
echo dhcpcd=YES >> /target/etc/rc.conf 
echo dhcpcd_flags="-q -b" >> /target/etc/rc.conf 
echo wpa_supplicant=YES >> /target/etc/rc.conf 
echo wpa_supplicant_flags="-B -i urtwn0 -c /etc/wpa_supplicant.conf" >> /target/etc/rc.conf 


