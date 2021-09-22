echo 'Server = https://mirrors.cnnic.cn/archlinux/$repo/os/$arch' > /etc/mirror.d/mirrorlist
echo 'Server = http://mirrors.163.com/archlinux/$repo/os/$arch' >> /etc/mirror.d/mirrorlist
echo 'Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch' >> /etc/mirror.d/mirrorlist
pacman -Sy
# pacstrap /mnt reflector nano
# reflector --country China --age 12 --protocol https --ipv4 -x dgut.edu.cn -x sjtu.edu.cn --download-timeout 30 --sort rate --fastest 2 --save /etc/pacman.d/mirrorlist

pacstrap /mnt base linux linux-firmware

# the / is /, /mnt/home/kktt007

cp chroot.sh /mnt/home/

chmod +x /mnt/home/chroot.sh

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt ./home/chroot.sh
