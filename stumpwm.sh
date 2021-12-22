sudo pacman -S --noconfirm go python python2 python-pip python-pipenv perl ruby xorg-server xorg-server-common xorg-xrandr arandr xorg-xrdb xorg-xmodmap xkeycaps xdg-user-dirs libx11 libxext xf86-input-libinput alsa-utils pulseaudio pulseaudio-alsa alsa-plugins alsa-firmware kmix pavucontrol-qt sddm bbswitch nvidia nvidia-utils nvidia-settings libva-vdpau-driver libva-utils libva-intel-driver rofi dunst picom feh mpv smplayer gstreamer gst-libav gst-plugins-good alacritty rxvt-unicode ttf-joypixels wqy-microhei ttf-iosevka-nerd ttf-sarasa-gothic fcitx-im fcitx-rime fcitx-table-extra fcitx-im zsh zsh-autosuggestions zsh-syntax-highlighting zsh-completions fd ripgrep neovim cscope vim-jedi xsel clip nodejs yarn emacs meld tmux weechat neofetch flameshot udiskie ranger htop ncdu zathura zathura-pdf-mupdf simplescreenrecorder bleachbit papirus-icon-theme perl-xml-parser bin86 asciidoc xmlto qemu upx dtc msmtp uglify-js libantlr3c gperf swig rsync zerotier-one exa byobu numlockx nnn

xdg-user-dirs-update

sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport LANG=en_US.UTF-8\nexport LANGUAGE=en_US:en_GB:en:zh_CN:zh_TW\nexport LC_CTYPE=en_US.UTF-8" >> ~kktt007/.xprofile

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/rupa/z.git "$HOME/.config/scripts"

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure"

cd ~
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# 虚拟机测试不需要Optimus
# yay optimus-manager
# yay optimus-manager-qt

#cd ~
#curl -O curl -O https://kktt007.top/ai/optimus.conf
#sudo mkdir -p /etc/optimus-manager && cp optimus.conf /etc/optimus-manager/optimus-manager.conf

# optimus-manager --set-startup=nvidia
#sudo systemctl enable optimus-manager.service

sudo systemctl enable sddm.service 


## stumpwm
yay stumpwm
yay dotdrop
yay nerd-fonts-meslo
yay nerd-fonts-dejavu-complete

curl -O https://github.com/kktt007/ai/raw/main/stumpwm.desktop

sudo mkdir /usr/share/xsessions

sudo cp stumpwm.desktop /usr/share/xsessions/stumpwm.desktop
