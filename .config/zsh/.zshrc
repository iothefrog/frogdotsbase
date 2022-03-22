neofetch --sixel &&
#title change "io" to your username
echo -n -e "\033]0;💖io@frogbox💖\007"
stty stop undef

# sudo not required for some system commands
for command in ln virsh  blkid  gparted mount umount systemctl sv pacman sv su shutdown poweroff reboot powerpill ; do
	alias $command="sudo $command"
done; unset command

#history
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.local/share/history
#sources
source ~/.config/zsh/plugins/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/sudo.plugin.zsh
source ~/.zprofile
source ~/.config/shell/aliasrc
source ~/.config/shell/prompt
# auto/tab complete:
autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	

# arrows and home end fix
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
bindkey '^;^[[P' kill-word
bindkey "\C-_"    backward-kill-word
bindkey '^[[P'   delete-char
bindkey "\e[H"  beginning-of-line
bindkey "\e[F"  end-of-line

#functions

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

bindkey -s '^f' 'lfcd\n'
bindkey -s '^e' 'e\n'
bindkey -s '^s' 'kanna\n'
bindkey -s '^z' 'z\n'
bindkey -s '^a' 'src\n'
bindkey -s '^p' 'clear\n'
bindkey -s '^l' 'ls\n'
bindkey -s '^b' 'd\n'
bindkey -s '^t' 'btop\n'
