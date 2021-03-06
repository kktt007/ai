# /mnt is the /, /mnt/home/kktt007 is /home/kktt007
timedatectl set-timezone Asia/Shanghai

hwclock -w

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

sed -e "s|\#\[multilib\]|\[multilib\]|" -i /etc/pacman.conf

sed -e "/\[multilib\]/{n;s|\#Include = /etc/pacman.d/mirrorlist|Include = /etc/pacman.d/mirrorlist|;}" -i /etc/pacman.conf

pacman -Syy

pacman -S --noconfirm archlinux-keyring archlinuxcn-keyring

pacman -Syyu

pacman -S --noconfirm base-devel devtools glib2 glibc lib32-gcc-libs lib32-glibc git wget p7zip unrar tar unzip unarchiver tftp-hpa openssh nano networkmanager dialog wpa_supplicant netctl wireless_tools dosfstools ntfs-3g grub efibootmgr os-prober intel-ucode

passwd

useradd -m -G wheel kktt007

passwd kktt007

sed -e "s|# %wheel ALL=(ALL) ALL|%wheel ALL=(ALL) ALL|" -i /etc/sudoers

# bios需要先建立ef02分区,然后grub-install /dev/sda vmware中设置虚拟机选项为uefi
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub --recheck 

sed -e "s|GRUB_DISABLE_OS_PROBER=\"true\"|GRUB_DISABLE_OS_PROBER=\"false\"|" -i /usr/bin/grub-mkconfig

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager.service

curl -O https://kktt007.top/ai/stumpwm.sh

curl -O https://kktt007.top/ai/i3.sh

curl -O https://kktt007.top/ai/kde.sh

cp i3.sh /home/kktt007/

cp kde.sh /home/kktt007/

cp stumpwm.sh /home/kktt007/

chmod +x /home/kktt007/i3.sh

chmod +x /home/kktt007/kde.sh

chmod +x /home/kktt007/stumpwm.sh