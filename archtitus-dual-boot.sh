#!/bin/bash

    bash 0-preinstall-dual-boot.sh
    cp -r /root/ArchTitus /mnt/root
    arch-chroot /mnt /root/ArchTitus/1-setup-dual-boot.sh
    source /mnt/root/ArchTitus/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchTitus/2-user.sh
    arch-chroot /mnt /root/ArchTitus/3-post-setup.sh