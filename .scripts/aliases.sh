# Useful aliases, to be source in .zshrc

# Replace stuff with bat
alias cat='bat '

# macos style open/copy commands
alias copy="wl-copy"
alias open="dolphin"

#systeminfo
alias probe='sudo -E hw-probe -all -upload'

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l='eza -lah --color=always --group-directories-first --icons' # tree listing

#pacman unlock
alias unlock='sudo rm /var/lib/pacman/db.lck'

#available free memory
alias free='free -mt'

#continue download
alias wget='wget -c '

#readable output
alias df='df -h'

#userlist
alias userlist='cut -d: -f1 /etc/passwd'

#Paru for software managment
alias search='paru -F '
alias remove='paru -Rs '
alias install='paru -S '
alias linstall='paru -U *.pkg.tar.zst'
alias update='paru -Syyu && flatpak update'
alias clrcache='paru -Scc'
alias orphans='paru -Rns $(paru -Qtdq)'

# Paru stuff
#
#Search repos with 'paru' and 'fzf'
alias parus="paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S"

#Search locally installed packages with 'paru', 'fzf' and 'bat'
alias parup="paru -Qq | fzf --preview 'paru -Qil {}' --layout=reverse --bind 'enter:execute(paru -Qil {} | bat)'"

#Bash aliases
alias mkfile='touch '
alias jctl='journalctl -p 3 -xb'
alias breload='cd ~ && source ~/.bashrc'
alias zreload='cd ~ && source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch'
alias traceme='traceroute github.com'

#youtube-dl
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

#GiT  command
alias gcl='git clone '
alias gpl='git pull'

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scpd='sudo cp -R'

#cd/ aliases
alias home='cd ~'
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Videos'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias sapps='cd /usr/share/applications'
alias lapps='cd ~/.local/share/applications'
alias proj='cd ~/Projects'

#verify signature for isos
alias gpg-check='gpg2 --keyserver-options auto-key-retrieve --verify'

#receive the key of a developer
alias gpg-retrieve='gpg2 --keyserver-options auto-key-retrieve --receive-keys'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '

##Refresh Keys
alias rkeys='sudo pacman-key --refresh-keys'

#shutdown or reboot
alias sr='sudo reboot'
alias ssn='sudo shutdown now'
