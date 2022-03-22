#!/bin/sh
#paru
pacman -Sy && pacman -S --noconfirm lf librewolf libsixel libxft-bgra openjpeg orchis-theme-git tela-circle-icon-theme-git yay paru powerpill &&
#sorting dots
cp -r $HOME/frogdots/.config ~/frogdots/.local $HOME &&
ln -sf $HOME/.config/shell/profile $HOME/.zprofile &&
ln -sf $HOME/.config/shell/profile $HOME/.bash_profile &&
ln -sf $HOME/.config/zsh/.zshrc $HOME/.zshrc &&
ln -sf $HOME/.config/shell/bashrc $HOME/.bashrc &&
ln -sf $HOME/.config/x11/xinitrc $HOME/.xinitrc &&
ln -sf $HOME/.config/x11/xprofile $HOME/.xprofile &&
ln -sf $HOME/.config/librewolf $HOME/.librewolf
ln -sf $HOME/.local/share/img/bg/froggieesmol.png $HOME/.local/share/bg
echo "✨🎉🎉🥳🥳 DONE 🥳🥳🎉🎉✨" &&
echo "💖💞source files for dwm,dwmblocks and dmenu can be found in ~/.local/src 💞💖" &&
echo "🤭dont forget to change your shell to zsh🤭" &&
echo "✨🎉🎉🥳🥳 DONE 🥳🥳🎉🎉✨"
