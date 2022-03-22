#!/bin/sh
pacman -Syu &&
#base
pacman -S --noconfirm pipewire pipewire-pulse zsh micro git mpd mpc mpv xclip xorg-server xorg-xinit xorg-xrandr libxinerama xorg-xrdb scrot dunst picom imagemagick openssh libjxl xorg-xwininfo libnotify yt-dlp youtube-dl xwallpaper noto-fonts-cjk noto-fonts noto-fonts pamixer ncmpcpp btop zip unzip unrar highlight python-pillow wmname pulsemixer libxrender lxappearance ueberzug &&
pacman -Rdd --noconfirm libxft &&
echo "✨🎉🎉🥳🥳 BASE DONE 🥳🥳🎉🎉✨"
pacman -Syy && pacman -S --noconfirm lynx && echo "#!/bin/bash" >> chaotickeys.sh && chmod +x chaotickeys.sh && lynx --dump https://aur.chaotic.cx/ | grep pacman-key >> chaotickeys.sh && sh chaotickeys.sh && pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' && echo "[chaotic-aur]" >> /etc/pacman.conf && echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf &&
pacman -Sy && pacman -S --noconfirm lf librewolf libsixel libxft-bgra openjpeg orchis-theme-git tela-circle-icon-theme-git yay paru powerpill otf-font-awesome ttf-font-awesome &&
echo "✨🎉🎉🥳🥳 CHAOTIC AUR ENABLED 🥳🥳🎉🎉✨"
