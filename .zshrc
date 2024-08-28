export TERM="xterm-256color"
export KWIN_TRIPLE_BUFFER=1
export LC_ALL=en_GB.UTF-8

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host user dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vcs battery time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito'

# ZPlug

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# Theme
zplug romkatv/powerlevel10k, as:theme

# Aliases
zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"

# Plugins
zplug "plugins/archlinux",         from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize",          from:oh-my-zsh
zplug "lib/completion",            from:oh-my-zsh
zplug "lib/history",               from:oh-my-zsh
zplug "lib/key-bindings",          from:oh-my-zsh
zplug "lib/termsupport",           from:oh-my-zsh
zplug "lib/directories",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting"
zplug "zdharma/fast-syntax-highlighting" # Работает намного быстрее предыдущего плагина и подсвечивает лучше
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use" # Сообщает о том, что для команды существует алиас

zplug check || zplug install
zplug load

alias ls="ls --color"
alias l="lsd --date '+%d.%m.%Y %H:%M' -lah"
alias enhance='function ne() { docker run --rm -v "$(pwd)/`dirname ${@:$#}`":/ne/input -it alexjc/neural-enhance ${@:1:$#-1} "input/`basename ${@:$#}`"; }; ne'
alias logout="loginctl terminate-user swzx"

    #
    # Timeshift
    #
    alias tm="sudo timeshift"
    alias tmc="sudo timeshift --create"
    alias tmd="sudo timeshift --delete"
    alias tmda="sudo timeshift --delete-all"
    alias tml="sudo timeshift --list"
    #
    # DNF
    #
    alias up="epm update && epm full-upgrade -y && flatpak update --noninteractive -y"
    alias cc="sudo apt-get clean && sudo apt-get autoclean && sudo apt-get check && flatpak uninstall --unused -y && sudo journalctl --vacuum-time=1weeks"
    alias c="clear"
    #
    # PC
    #
    alias son="sudo systemctl suspend"
    alias reboot="systemctl reboot"
    alias r="systemctl reboot"
    alias ls="ls --color"
    alias l="lsd --date '+%d.%m.%Y %H:%M' -lah"
    #
    # Flatpak
    #
    alias fli="flatpak install --noninteractive -y flathub"
    alias flr="flatpak remove --noninteractive -y"
    alias fr="flatpak repair"
    alias fl="flatpak list"
    #
    # Gnome Text Editor
    #
    alias gte="gnome-text-editor"
    alias sgte="sudo gnome-text-editor"
    #
    # System folders
    #
    alias fstab="sudo vim /etc/fstab"
    alias bashrc="vim ~/.bashrc"
    alias zshrc="vim ~/.zshrc"
    alias bashrc="vim .bashrc"
    alias grubedit="sudo vim /etc/default/grub"
    alias editgrub="sudo vim /etc/default/grub"
    alias upgrub="sudo grub2-mkconfig -o /boot/grub2/grub.cfg"
    alias grubup="sudo grub2-mkconfig -o /boot/grub2/grub.cfg"
    alias sn="sudo nautilus"
    alias v4="sudo modprobe v4l2loopback"
    alias vmax="sudo sysctl -w vm.max_map_count=2147483642"
    
export PATH=~/.cargo/bin:$PATH



