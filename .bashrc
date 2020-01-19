#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'

#PS1='[\u@\h \W]\$ '

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Changing directory
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# System Updates
alias update='sudo apt update'
alias trizenskip='trizen --skipinteg'
alias chlum='sudo nano /sys/class/backlight/intel_backlight/brightness'

alias ping='ping -c 5'
alias www='python -m SimpleHTTPServer'
alias ports='netstat -tulanp'

alias ctf='cd /home/prosen/Documents/CTF'
alias mykee='keepass2 ~/Documents/Perso/Database.kdbx'
# HTB

alias htb='cd /home/prosen/Documents/CTF/HTB'
alias htbb='cd /home/prosen/Documents/CTF/HTB/BOX'
alias shtb='sudo /usr/sbin/openvpn /home/prosen/Documents/CTF/HTB/rosenzweig.ovpn'

alias htb_pub='cat /home/prosen/Documents/CTF/HTB/BOX/id_rsa.pub'
alias htb_priv='cat /home/prosen/Documents/CTF/HTB/BOX/id_rsa'


# Rootme
alias rootme='cd /home/prosen/Documents/CTF/Rootme/'
alias rmcrypt='cd /home/prosen/Documents/CTF/Rootme/Crypt'
alias rmforen='cd /home/prosen/Documents/CTF/Rootme/Forensic'
alias rmstega='cd /home/prosen/Documents/CTF/Rootme/Stégano'

# Adworld
alias adpwn='cd /home/prosen/Documents/CTF/adworld/pwn'

# BASH
alias ebashrc="nano /home/prosen/.bashrc"
alias sbashrc="source /home/prosen/.bashrc"

# Enum
alias legion="sudo python3 /home/prosen/opt/enum/legion/legion.py"

# Pwn
alias checksec='python /usr/local/lib/python2.7/dist-packages/pwnlib/commandline/checksec.py'

# Network
alias NetworkMiner='mono /home/prosen/opt/network/NetworkMiner_2-4/NetworkMiner.exe'

# Crypto
alias RsaCtfTool='python2 /home/prosen/opt/crypt/RsaCtfTool/RsaCtfTool.py'
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
# Forensic
alias chaosreader='perl ~/opt/forensic/Chaosreader-0.96/chaosreader'
alias john='/usr/sbin/john'

# Reverse
alias ghidra='/home/prosen/opt/reverse/ghidra/ghidra_9.0/ghidraRun'
alias ida64="/home/prosen/idafree-7.0/ida64"
alias upx='/home/prosen/opt/reverse/upx-3.91-amd64_linux/upx'
alias pebear='/home/prosen/opt/reverse/pe-bear/PE-bear'

# Misc
alias pdf-parser='python2 ~/opt/misc/pdf-parser.py'
alias tmcp='tmux show-buffer -b `tmux list-buffers | head -n1 | cut -d":" -f1`'
alias xlate='python /home/prosen/opt/misc/xlate/xlate.py'

# Android
alias jd-gui='java --add-opens java.base/jdk.internal.loader=ALL-UNNAMED --add-opens jdk.zipfs/jdk.nio.zipfs=ALL-UNNAMED -jar /home/prosen/opt/android/jd-gui-1.4.0.jar'

# Prog
alias pycharm='sh /home/prosen/opt/prog/pycharm-community-2018.3.4/bin/pycharm.sh'

# Steg
alias stegsolve='/home/prosen/opt/stega/stegsolve.jar'

# Web
alias sqlmap='python2 /home/prosen/opt/web/sqlmap-dev/sqlmap.py'
alias gobuster='/home/prosen/opt/web/gobuster-linux-amd64/gobuster'

# Export
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export CHEATCOLORS=true
export EDITOR=nano

export PATH=/root/.gem/ruby/2.6.0/bin:$PATH




# Extracts any archive(s) (if unp isn't installed)
extract () {
	for archive in $*; do
		if [ -f $archive ] ; then
			case $archive in
				*.tar.bz2)   tar xvjf $archive    ;;
				*.tar.gz)    tar xvzf $archive    ;;
				*.tar.xz)    tar xf $archive    ;;
				*.xz)    tar xf $archive    ;;
				*.bz2)       bunzip2 $archive     ;;
				*.rar)       rar x $archive       ;;
				*.gz)        gunzip $archive      ;;
				*.tar)       tar xvf $archive     ;;
				*.tbz2)      tar xvjf $archive    ;;
				*.tgz)       tar xvzf $archive    ;;
				*.zip)       unzip $archive       ;;
				*.Z)         uncompress $archive  ;;
				*.7z)        7z x $archive        ;;
				*)           echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}

PATH="/home/prosen/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/prosen/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/prosen/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/prosen/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/prosen/perl5"; export PERL_MM_OPT;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export "PATH=$PATH:/home/prosen/.local/bin"
