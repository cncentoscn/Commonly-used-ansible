#!/bin/bash
#
#
diskfullpath=$1
 
UUID=$(blkid $diskfullpath | cut -d" " -f2) ; echo "$UUID /home xfs defaults 0 0" >> /etc/fstab

