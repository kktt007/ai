# /mnt is the /, /mnt/home/kktt007 /home/kktt007
timedatectl set-timezone Asia/Shanghai
hwclock -w

systemctl enable systemd-timesyncd.service
timedatectl set-ntp true

echo archlinux > /etc/hostname

echo KEYMAP=us >> /etc/vconsole.conf

echo '127.0.0.1       localhost' >> /etc/hosts

echo '::1             localhost' >> /etc/hosts

echo '127.0.1.1   archlinux.localdomain archlinux' >> /etc/hosts

echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen

echo 'zh_CN.UTF-8 UTF-8' >> /etc/locale.gen

echo 'zh_HK.UTF-8 UTF-8' >> /etc/locale.gen

echo 'zh_TW.UTF-8 UTF-8' >> /etc/locale.gen

echo 'zh_CN.GB18030 GB18030' >> /etc/locale.gen

# echo "LANG=en_US.UTF-8" > /etc/locale.conf
localectl set-locale LANG=en_US.UTF-8

locale-gen

echo "[archlinuxcn]" >> /etc/pacman.conf

echo "Server = http://mirrors.aliyun.com/archlinuxcn/\$arch" >> /etc/pacman.conf

pacman -Sy

pacman -S --noconfirm archlinux-keyring archlinuxcn-keyring

pacman -Sy

passwd

useradd -m -G wheel kktt007

passwd kktt007

pacman -S --noconfirm base-devel git wget curl nano networkmanager sddm nm-connection-editor dosfstools ntfs-3g bbswitch alacritty ranger dialog wpa_supplicant netctl wireless_tools dosfstools grub efibootmgr os-prober intel-ucode

sed -e "s|# %wheel ALL=(ALL) ALL|%wheel ALL=(ALL) ALL|" -i /etc/sudoers

# bios需要先建立ef02分区,然后grub-install /dev/sda vmware中设置虚拟机选项为uefi
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub --recheck 

sed -e "s|GRUB_DISABLE_OS_PROBER=\"true\"|GRUB_DISABLE_OS_PROBER=\"false\"|" -i /usr/bin/grub-mkconfig

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager.service

curl -O https://kktt007.top/ai/install.sh

cp install.sh /home/kktt007/

chmod +x /home/kktt007/install.sh