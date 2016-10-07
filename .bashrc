# to solve the Spanish vs German vs English incompatibilities
LC_ALL=C


#aliases general
alias installinhome='./configure --prefix=$HOME/softwares && make && make install'
alias tmuxls='lsof -U | grep '^tmux''
alias dat='cd /media/mexposito/Data'
alias bur='ssh mexposito@bur'
alias rur='ssh mexposito@rur'
alias burrito='ssh mexposito@burrito'
alias qq='q-charge --no-joblist'
alias ll='ls -la'
alias llh='ls -lah'
alias untar='tar -zcvf'


#aliases bur directories
alias solexa='cd ~/ebio/abt6_projects8/solexa_tools'
alias cdmoi='cd ~/ebio/abt6_projects8/ath_1001G_history'
alias cdim='cd ~/ebio/abt6_projects9/ath_1001G_image_pheno'
alias cdimd='cd ~/ebio/abt6_projects9/ath_1001G_image_pheno/data/greenhouse_drought_experiment/alljpg'
alias cdims='cd ~/ebio/abt6_projects9/ath_1001G_image_pheno/scripts'
alias cdclaude='cd ~/ebio/abt6_projects8/NA_ATH_80_genomes/data/accessions/for_moises/'
alias cdwei='cd ~/ebio/abt6_projects7/Leftover_Analysis/1135final/data/output'
alias cdhpg='cd ~/ebio/abt6_projects9/ath_hpg1'
alias cdimg='cd ~/ebio/abt6_projects9/ath_1001G_image_pheno/experiment_218_droughtgwa'
alias cdimf='cd ~/ebio/abt6_projects9/ath_1001G_image_pheno/experiment_218_droughtgwa/fineancestry'
alias cdg='cd ~/ebio/abt6_projects9/ath_1001g_foreverybody'
alias cdf='cd ~/ebio/abt6_projects7/ath_1001G_field'

# software aliases
alias admixture='~/softwares/admixture_linux-1.23/admixture'
alias plink='~/softwares/plink'
alias vcftools='~/softwares/vcftools_0.1.12b/bin/vcftools'

# tmux stuff
alias sourcetmux='tmux source-file ~/.tmux.conf'
alias ts="tmux ls"
alias ta='tmux a -t'
alias tn='tmux new -s'

# screen stuff
alias sl='screen -ls'
alias sr='screen -r'

# git stuff
alias gsall="git ls-tree -r master --name-status"
alias gdco='git log --oneline --decorate'
alias gbra='git branch'
alias gc='git commit -m'
alias gmer='git merge remote'
alias ga='git add'
alias gs="git status"
alias gc="git commit"
alias gr="git checkout"
alias ga="git add"
alias gl="git lola"

# This is needed for git log to work. http://stackoverflow.com/questions/12328791/why-git-log-is-empty-even-if-log-file-exists
export PAGER=/usr/bin/more

#Paths compiled softwares
export PATH=$PATH:~/softwares/vcflib/bin
export PATH=$PATH:~/softwares/tabix-0.2.6
export PATH=$PATH:~/softwares/vcftools_0.1.12b/bin
export PERL5LIB=/path/to/your/vcftools-directory/perl/
export PATH=$PATH:/usr/share/hplip
export PYTHONPATH=$PYTHONPATH:"~/ebio/abt6/mexposito/lib/python2.7/site-packages"
export PYTHONPATH=$PYTHONPATH:'~/ebio/abt6/mexposito/lib/python2.7/site-packages/python_utils-1.5.2-py2.7.egg/python_utils'
export PYTHONPATH=$PYTHONPATH:'~/ebio/abt6/mexposito/softwares/lib/python2.7/site-packages'
export PYTHONPATH=$PYTHONPATH:'~/ebio/abt6/mexposito/softwares/lib/python'
export PATH=$PATH:~/ebio/abt6/mexposito/bin
export PATH=$PATH:~/ebio/abt6/mexposito/softwares
export PATH=$PATH:~/ebio/abt6/mexposito/softwares/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/softwares/beagle-lib/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/softwares
export PATH=~/ebio/abt6/mexposito/softwares/R-3.2.0/bin/:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=no
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

 # Change color of username and insert time at the beginning
export PS1="\A \[\033[0;35m\]\u@\h:\[\033[0m\]\w\$ "; # from Ana-Lenna I think
#export PS1="\[\033[1;34m\][\$(date +%H%M)][\u@\h:\w]$\[\033[0m\] " ;
#PS1='[\u@\h \W]\$ '  # Default
#export PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

