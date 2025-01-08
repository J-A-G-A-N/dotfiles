# Define Editor
export EDITOR=nvim
bindkey -e

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
alias c='clear'
alias nf='fastfetch'
alias pf='fastfetch'
alias ff='fastfetch'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
#alias vim='$EDITOR'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias wifi='nmtui'
alias dot="cd ~/dotfiles"
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias chrome='/opt/google/chrome/chrome'
alias py312='conda activate py312'
alias dpy312='conda deactivate'
alias livereload='/home/gluon/.config/miniconda3/envs/py312/bin/livereload'
alias py='python3'
alias zigdoc='zen /home/gluon/work/compilers/zig/doc/langref.html & disown && exit'  
alias exercism='~/work/sourcecode/GITHUB/bin/exercism'
alias zig14='/home/gluon/work/sourcecode/compilers/zigmaster/zigmas/zig'
alias flash="/home/gluon/.arduino15/packages/vega/tools/vegaflasher/002/flasher.bat"
alias tmuxs="~/work/sourcecode/tmux-sessionizer/tmux-sessionizer"
alias playmusic="~/work/shell_scripts/play-music.sh"
alias  yt-dl='py /home/gluon/work/sourcecode/youtube-dl/youtube_dl/__main__.py -o "/home/gluon/Downloads/ext/%(title)s.%(ext)s"'
# -----------------------------------------------------
# ML4W Apps
# -----------------------------------------------------
alias ml4w='~/dotfiles/apps/ML4W_Welcome-x86_64.AppImage'
alias ml4w-settings='~/dotfiles/apps/ML4W_Dotfiles_Settings-x86_64.AppImage'
alias ml4w-sidebar='~/dotfiles/eww/ml4w-sidebar/launch.sh'
alias ml4w-hyprland='~/dotfiles/apps/ML4W_Hyprland_Settings-x86_64.AppImage'
alias ml4w-diagnosis='~/dotfiles/hypr/scripts/diagnosis.sh'
alias ml4w-hyprland-diagnosis='~/dotfiles/hypr/scripts/diagnosis.sh'
alias ml4w-qtile-diagnosis='~/dotfiles/qtile/scripts/diagnosis.sh'
alias ml4w-update='~/dotfiles/update.sh'



# -----------------------------------------------------
# GIT
# -----------------------------------------------------
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"
alias tetris="qemu-system-i386 ~/OS/boot.bin"

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------
alias ascii='~/dotfiles/scripts/figlet.sh'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init zsh)"

# -----------------------------------------------------
# SOURCE
# -----------------------------------------------------
source ~/work/sourcecode/pomodoro.sh


# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
#cat ~/.cache/wal/sequences

# -----------------------------------------------------
# Fastfetch if on wm
# -----------------------------------------------------
if [[ $(tty) == *"pts"* ]]; then
    fastfetch --config examples/13
else
    echo
    if [ -f /bin/qtile ]; then
        echo "Start Qtile X11 with command Qtile"
    fi
    if [ -f /bin/hyprctl ]; then
        echo "Start Hyprland with command Hyprland"
    fi
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gluon/.config/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gluon/.config/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gluon/.config/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gluon/.config/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# mounting android phone
mountphone() {
    MOUNT_POINT=~/android
    # Create mount point if it doesn't exist
    [ ! -d "$MOUNT_POINT" ] && mkdir -p "$MOUNT_POINT"
    # Mount the Android device using jmtpfs
    jmtpfs "$MOUNT_POINT"
    if [ $? -eq 0 ]; then
		notify-send  "Android device mounted at $MOUNT_POINT"
    else
        notify-send "Failed to mount Android device"
    fi
}

# Function to unmount the Android device
umountphone() {
    MOUNT_POINT=~/android
    # Unmount the Android device
    fusermount -u "$MOUNT_POINT"
    if [ $? -eq 0 ]; then
        notify-send "Android device unmounted from $MOUNT_POINT"
    else
        notify-send "Failed to unmount Android device"
    fi
}

vimwiki(){
	cd ~/Documents/Wiki/sources/
	nvim index.md
}
export http_proxy=http://172.17.32.1:56349
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export rsync_proxy=$http_proxy
export no_proxy=localhost,127.0.0.1
