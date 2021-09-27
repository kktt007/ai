sudo pacman -S --noconfirm go python python-pip python-pipenv perl ruby xorg-server xorg-server-common xorg-xrandr arandr xorg-xrdb xorg-xmodmap xkeycaps xdg-user-dirs ttf-joypixels wqy-microhei xf86-input-libinput alsa-utils pulseaudio pulseaudio-alsa alsa-plugins alsa-firmware kmix pavucontrol-qt nvidia nvidia-utils nvidia-settings libva-vdpau-driver libva-utils libva-intel-driver zsh zsh-autosuggestions zsh-syntax-highlighting zsh-completions bash-completion rxvt-unicode p7zip unrar tar unzip unarchiver tftp-hpa fd neovim cscope vim-jedi xsel nodejs yarn meld tmux weechat neofetch flameshot mpv smplayer gstreamer gst-libav gst-plugins-good fcitx-im fcitx-rime kcm-fcitx fcitx-table-extra ripgrep stow zathura zathura-pdf-mupdf openssh simplescreenrecorder bleachbit papirus-icon-theme libx11 libxext perl-xml-parser bin86 asciidoc b43-fwcutter cdrtools mercurial fastjar intltool sharutils time xmlto qemu upx dtc lib32-glibc msmtp uglify-js libantlr3c gperf swig rsync sddm materia-gtk-theme

# i3
sudo pacman -S --noconfirm i3-gaps rofi dunst picom numlockx network-manager-applet flameshot ranger mpd

cd ~
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay optimus-manager
yay optimus-manager-qt

cd ~
curl -O curl -O https://kktt007.top/ai/optimus.conf
sudo mkdir -p /etc/optimus-manager && cp optimus.conf /etc/optimus-manager/optimus-manager.conf

sudo systemctl enable sddm.service 
sudo systemctl enable optimus-manager.service

# optimus-manager --set-startup=nvidia

xdg-user-dirs-update

sudo echo -e "export GTK_IM_MODULE=fcitx\nexport QT_IM_MODULE=fcitx\nexport XMODIFIERS=@im=fcitx\nexport LANG=en_US.UTF-8\nexport LANGUAGE=en_US:en_GB:en:zh_CN:zh_TW\nexport LC_CTYPE=en_US.UTF-8" >> ~kktt007/.xprofile

yay nerd-fonts-meslo
yay nerd-fonts-dejavu-complete
yay ttf-sarasa-gothic
yay ttf-iosevka
yay nerd-fonts-fira-code
yay brave-bin
yay visual-studio-code-bin
yay appimagelauncher

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/rupa/z.git "$HOME/.config/scripts"

git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM/themes/pure"
