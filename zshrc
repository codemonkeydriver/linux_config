# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"
VM_IP="172.16.63.128"
PC_IP="10.0.0.43"
EJTAG_PATH='/usr/local/comp/ejtag-debug'
WORD='Hi I am codemonkey'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git jump github tmux web-search suse)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/home/cfylee/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/usr/lib/mit/bin
export PATH=$PATH:/sbin:/bin:/usr/bin:/usr/sbin

#loongson cross compile
export PATH=$PATH:/usr/local/comp/mips-elf/gcc-2.95.3/bin
export PATH=$PATH:/usr/local/comp/gcc-3.4.6-2f/bin
export PATH=$PATH:/usr/local/comp/gcc-4.3-ls232/bin
export PATH=$PATH:/usr/local/comp

#ejtag debug
export PATH=$PATH:/usr/local/comp/ejtag-debug/
alias ejtagcfg='vim /usr/local/comp/ejtag-debug/ejtag.cfg'
alias startkernel='cd $EJTAG_PATH && sudo ./ejtag_debug_usb < startkernel'
alias startgdb='cd $EJTAG_PATH && sudo ./ejtag_debug_usb < startgdb'

#android sdk
export PATH=$PATH:/usr/bin/adt-bundle-linux-x86-20130729/sdk/tools
export PATH=$PATH:/usr/bin/adt-bundle-linux-x86-20130727/sdk/platform-tools

#tmux config
alias tmux='tmux -2'

#git alias
alias rmgit='find . -name ".git" | xargs rm -rf'
alias gls='git log --stat'
alias gds='git diff --stat'

#cmd alias
alias mkcfg='make cfg 2>~/.log/mkcfglog 1>/dev/null'
alias mkrom='make tgt=rom 2>~/.log/mklog 1>/dev/null'
alias mvx2f7='sudo mount //$VM_IP/WindRiver2f32 ~/Workspace/src/vxworks_2F6.7'
alias mvx3a7='sudo mount //$VM_IP/Windriver_3A6.7 ~/Workspace/src/vxworks_3A6.7'
alias mvx3a8='sudo mount //$VM_IP/Windriver  ~/Workspace/src/vxworks_6.8'
alias mpc='sudo mount //$PC_IP/workspace ~/Workspace/src/vxworks_pc' # for winxp
#alias mpc='sudo mount //$PC_IP/workspace ~/Workspace/src/vxworks_pc -o username=Adminstrator' # for win7

#remote win desktop
#alias rwin='rdesktop -g 1440x900 -a 16 10.0.0.41 -u administrator -p loongson & '
alias rwin='realvnc &'
