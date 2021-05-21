
## ssh to computer work
alias mexposito="ssh moisesexpositoalonso@10.39.102.99"

## general shortcuts
alias cdd="cd /Dropbox"
alias ll="ls -l -a"
alias llh="ls -lah"
alias llt="ls -ta"
alias lld=' ll -d */'
alias descomp='tar -zcvf'

## Tmux stuff
alias sourcetmux='tmux source-file ~/.tmux.conf'
alias ts="tmux ls"
alias ta='tmux a -t'
alias tn='tmux new -s'


# for connections and folders

alias trout='ssh moi@troutbuster.biol.berkeley.edu'
alias tilden='ssh moi@tilden.biol.berkeley.edu'
alias bur='ssh mexposito@bur.eb.local'
alias cgw='ssh mexposito@cgw.tuebingen.mpg.de'
alias burrito='ssh mexposito@burrito.eb.local'
alias calc='ssh mexpositoalonso@calc.dge.carnegiescience.edu'
alias memex='ssh mexpositoalonso@memex.carnegiescience.edu'


#alias to mount smbfs
alias mountcarnegie="mount_smbfs //mexpositoalonso@homes-su.dpb.carnegiescience.edu/mexpositoalonso ~/mexpositoalonso"
alias unmountcarnegie="unmount ~/mexpositoalonso"


#alias smoi="ssh moisesexpositoalonso@10.39.118.127"
alias smoi="ssh moisesexpositoalonso@192.124.26.250"
alias smex="ssh mexposito@10.39.118.127"
alias killsshfs="pgrep sshfs |xargs kill -9"
alias mountmoi="sshfs -p 22 moisesexpositoalonso@10.39.118.127:/ ~/work_remote -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=work_remote"

alias mounttilden="sshfs moi@tilden.biol.berkeley.edu:/space/s1/moi/ ~/tilden -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=tilden"
alias unmounttilden="sudo diskutil unmount force tilden/"


alias mountcalc="sshfs mexpositoalonso@calc.dg.carnegiescience.edu:~/ ~/calc -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=calc"
alias unmountcalc="sudo diskutil unmount force calc/"

alias mountebio="sshfs mexposito@burrito.eb.local:/ebio/ ~/ebio -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=ebio"
alias unmountebioforce="sudo diskutil unmount force ebio/"
alias cdclim='cd ~/GoogleDrive/PhD_docs/experiment_1001G/experiment_field_1001g_share/climate_sensors/FlowerPower-Tools-dev/CSV-Dump'
alias rstudio='open -a Rstudio'
alias scpthis="bash ~/bin/scpthis.sh"
alias Rcs="R CMD SHLIB"

# for shoing files
alias showFIles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/LIbrary/CoreServices/Finder.app'
alias hideFIles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/LIbrary/CoreServices/Finder.app'

# git stuff
alias gs='git status'
alias ga="git add"
alias gdco='git log --oneline --decorate'
alias gbra='git branch'
alias chout='git checkout'
alias gc='git commit -m'
alias merrem='git merge remote'
alias gr="git rm"
alias gd="git ls-files --deleted -z | xargs -0 git rm"
#alias grmall ='git rm $(git ls-files --deleted)'


# For software
source ~/git-completion.bash

# Java path
JAVA_HOME=/Library/Java/JavaVirtualMachines/ijdk-10.0.1.jdk/Contents/Home
export JAVA_HOME=$JAVA_HOME
PATH=$PATH:$JAVA_HOME/bin

# for changing the colors of your terminal name.
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# PATHS
export PATH="$HOME/bin:$PATH"

# Path for anaconda, not in use April 16 2019
#export PATH="/home/moisesexpositoalonso/anaconda3/bin:$PATH" 

# Paths for CPP for lopenblas library, required for GEMMA instalation
# nope, these were to be included in the Makefile for GEMMA compilation
#export LDFLAGS="-L/usr/local/opt/openblas/lib"
#export CPPFLAGS="-I/usr/local/opt/openblas/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"


# MacPorts Installer addition on 2015-11-22_at_13:24:29: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH


# added by Miniconda3 installer
export PATH="/Users/moisesexpositoalonso/miniconda3/bin:$PATH"

# export for -fopenm functionality to build some R packages with C++ code
# export PATH="/usr/local/opt/llvm/bin:$PATH"
# For compilers to find llvm you may need to set:
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

