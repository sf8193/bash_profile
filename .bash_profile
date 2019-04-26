# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#PATH="/usr/local/bin${PATH}"
    export PS1="________________________________________________________________________________\w $: "

alias rt='source ~/.bash_profile'
alias cp="cp -v"
alias mv="mv -v"
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias c='clear'                             # c:Clear terminal display
alias health=' cd ~/Documents/Ferris_Lessons/health'
alias work=' cd ~/Documents/Ferris_Lessons/work'
alias lessons='cd ~/Documents/Ferris_Lessons/'
alias tls='ls -tr'

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

function as(){
	cd $1
	ls -al
}

function newtab() {
	if [ "$PWD" != "$MYOLDPWD" ]; then
		MYOLDPWD="$PWD";
		printf "\e]1;${PWD##*/}\a"
		fi
}
export PROMPT_COMMAND=newtab

function ebash(){
	vim ~/.bash_profile
}

function vimbash(){
	vim ~/.vimrc
}

function commit(){
    ticket="EE"
    my_branch=`branch | grep \* | cut -d ' ' -f2`
    BR=${my_branch#"${my_branch%%$ticket*}"} # takes "branch" and cuts everything before "ticket" see more here http://mywiki.wooledge.org/BashGuide/Parameters#Parameter_Expansion and here https://unix.stackexchange.com/questions/167755/remove-leading-string-in-bash
    git commit -am "$BR $1"
}

function push(){
# steps to implement
# 1) paste in your ~/.bash_profile
# 3) run source .bash_profile on cli
    commit "$1"
    git push origin $my_branch
}

function forReview(){
    git fetch origin $1
    git checkout -b $1_review origin/$1
}

function newBranch(){
    git checkout -b $1
    git push -u origin $1
}

function pull(){
	git pull origin "$1"
}

function log(){
        git log --pretty=format:"%h - (%an, %ar) ----  %s"  --graph
}

function branch(){
    git branch -vv
    git status --short
}
  
# Tell grep to highlight matches
  export GREP_OPTIONS='--color=auto'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
