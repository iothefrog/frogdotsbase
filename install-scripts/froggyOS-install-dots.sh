#!/bin/sh
#paru
#sorting dots
cp -r $HOME/frogdotsbase/.config $HOME/frogdotsbase/.local $HOME &&
ln -sf $HOME/.config/shell/profile $HOME/.zprofile &&
ln -sf $HOME/.config/shell/profile $HOME/.bash_profile &&
ln -sf $HOME/.config/zsh/.zshrc $HOME/.zshrc &&
ln -sf $HOME/.config/shell/bashrc $HOME/.bashrc &&
ln -sf $HOME/.config/x11/xinitrc $HOME/.xinitrc &&
ln -sf $HOME/.config/x11/xprofile $HOME/.xprofile &&
ln -sf $HOME/.config/librewolf $HOME/.librewolf
ln -sf $HOME/.local/share/img/bg/froggieesmol.png $HOME/.local/share/bg
echo changing default shell to zsh &&
chsh -s /bin/zsh &&
paru -S --noconfirm --noreview noto-fonts-emoji-blob
echo "✨🎉🎉🥳🥳 DONE 🥳🥳🎉🎉✨" &&
echo "💖💞source files for dwm,dwmblocks and dmenu can be found in ~/.local/src💞💖" 
