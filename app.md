
## sort mirror
reflector

## editor
nano 

## network
networkmanager dialog wpa_supplicant netctl wireless_tools

## base
base-devel devtools glib2 glibc lib32-gcc-libs lib32-glibc git wget p7zip unrar tar unzip unarchiver tftp-hpa openssh

### lede 需要开启multilib镜像
 python2 perl-xml-parser bin86 asciidoc xmlto qemu upx dtc msmtp uglify-js libantlr3c gperf swig rsync

```
fastjar intltool b43-fwcutter cdrtools mercurial  sharutils time// 以上部分依赖自动安装
```

``` 已有的
gcc-libs libtool libelf openssl apr-util apr ncurses binutils bzip2 serf libutf8proc subversion unzip libelf autoconf gettext libtool glib2 patch bzip2 zlib flex

openssl // 属于coreutils 系统自带组件

base-devel // 自带  	autoconf automake binutils bison fakeroot file findutils flex gawk gcc gettext grep groff gzip libtool m4 make pacman patch pkgconf	sed sudo texinfo which
```

## microsoft and grub
dosfstools ntfs-3g grub efibootmgr os-prober intel-ucode

## GPU
bbswitch nvidia nvidia-utils nvidia-settings libva-vdpau-driver libva-utils libva-intel-driver

### language
go python python-pip python-pipenv perl ruby sbcl
  - sbcl lisp解释器

### terminal
alacritty rxvt-unicode terminator 

## xorg
xorg-server xorg-server-common xorg-xrandr arandr xorg-xrdb xorg-xmodmap xkeycaps xdg-user-dirs libx11 libxext

## fonts
ttf-joypixels wqy-microhei ttf-iosevka-nerd ttf-sarasa-gothic

## I/O
xf86-input-libinput

## audio
alsa-utils pulseaudio pulseaudio-alsa alsa-plugins alsa-firmware pavucontrol-qt

### video
mpv smplayer gstreamer gst-libav gst-plugins-good

## 标准文件夹生成
xdg-user-dirs-update

## zsh
zsh zsh-autosuggestions zsh-syntax-highlighting zsh-completions fd ripgrep

## rime
fcitx-im fcitx-rime kcm-fcitx fcitx-table-extra fcitx-im

## editor
neovim cscope vim-jedi xsel clip nodejs yarn emacs

### apps
  - meld git diff工具

  - tmux  终端复用

  - byobu ssh后台运行工具

  - weechat  irc客户端

  - neofetch 系统信息

  - 截图 flameshot 

  - stow dotfile备份

  - zerotier-one 内网穿透

  - htop //Interactive process viewer

  - ncdu // Disk usage analyzer with an ncurses interface

  - exa // 类似ls

## display manager
sddm

### tiling windows manager

  - udiskie 自动挂载 automount

  - ranger 文件浏览

  - nnn // file browser

### i3
i3-gaps rofi dunst picom numlockx network-manager-applet feh

### 窗口
yay stumpwm

### pdf
zathura zathura-pdf-mupdf simplescreenrecorder bleachbit

### kde
kf5 kf5-aids plasma plasma-nm packagekit-qt5 dolphin kcron khelpcenter ksystemlog partitionmanager konsole filelight kdf kgpg kate kbackup markdownpart kdialog kcharselect sweeper gwenview kcolorchooser okular kruler kdeconnect kdenetwork-filesharing kget kmix

### kde theme
materia-kde kvantum-theme-materia 

### theme
papirus-icon-theme 


### 远程控制
[Remmina - ArchWiki](https://wiki.archlinux.org/title/Remmina)

[Arch Linux - rdesktop 1.9.0-2 (x86_64)](https://archlinux.org/packages/community/x86_64/rdesktop/)

[Arch Linux - freerdp 2:2.4.1-1 (x86_64)](https://archlinux.org/packages/community/x86_64/freerdp/)

[Xrdp - ArchWiki](https://wiki.archlinux.org/title/Xrdp)

[AUR (en) - teamviewer](https://aur.archlinux.org/packages/teamviewer/)


### yay 字体,多显卡等
yay optimus-manager
yay optimus-manager-qt
yay nerd-fonts-meslo
yay nerd-fonts-dejavu-complete
yay nerd-fonts-fira-code
yay brave-bin
yay visual-studio-code-bin
yay appimagelauncher
yay inxi // 浏览系统信息
// [Category:Boot process (简体中文) - ArchWiki](https://wiki.archlinux.org/title/Category:Boot_process_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
