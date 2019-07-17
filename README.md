# netbsd unix bsd 
user third party for installation and settings
1. get img.gz to make usb media, with zcat netbsd.img.gz > /dev/XX
2. boot
3. /bin/sh in the menu utils
4. getwifi.sh to get wifi the free way
5. installer ... partitions,... as usual
6. custom with comp and man pages. gcc will be available.
7. /etc/ <-- with your wpa wifi conf
8. add users and pkgin (after network). 
9. Reboot
10. BSD Runs. 


# Alternative Method
An alternative setup method saves space on the Stick at the expense of sysinst automation and is therefore more advanced. This method skips the sysinst tool by copying the sets and the normal GENERIC Kernel instead of the install-Kernel.

Extract the sets from the harddisk directly on to the Memory stick (/mnt):
> tar xvfzp sets.tgz -C /mnt 


Extract the Kernel to the target root:

> tar xvfzp GENERIC-kernel.tgz -C /mnt
