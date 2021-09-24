# echo 'Server = https://mirrors.cnnic.cn/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist
# echo 'Server = http://mirrors.163.com/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
# echo 'Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist
pacstrap /mnt reflector
reflector --country China --age 12 --protocol https --ipv4 -x dgut.edu.cn -x sjtu.edu.cn --download-timeout 30 --sort rate --fastest 3 --save /etc/pacman.d/mirrorlist

sed -i "11iServer = https://mirrors.cnnic.cn/archlinux/\$repo/os/\$arch" /etc/pacman.d/mirrorlist
sed -i "12iServer = http://mirrors.163.com/archlinux/\$repo/os/\$arch" /etc/pacman.d/mirrorlist
sed -i "13iServer = http://mirrors.aliyun.com/archlinux/\$repo/os/\$arch" /etc/pacman.d/mirrorlist

pacman -Sy

pacstrap /mnt base linux linux-firmware

# the / is /, /mnt/home/kktt007

cp chroot.sh /mnt/home/

chmod +x /mnt/home/chroot.sh

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt ./home/chroot.sh
