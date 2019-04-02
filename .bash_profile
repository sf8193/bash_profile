
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
#PATH="/usr/local/bin${PATH}"
    export PS1="________________________________________________________________________________\w $: "
alias m='/Users/Samuel/bin/make_script'


alias rt='source .bash_profile'
alias cp="cp -v"
alias mv="mv -v"
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias c='clear'                             # c:Clear terminal display
alias gsoc='cd Documents/GSOC/'
alias ds='cd ~/Documents/School/distributed/mp2/cs425-sp18/mp2'
alias health=' cd ~/Documents/Ferris_Lessons/health'
alias work=' cd ~/Documents/Ferris_Lessons/work'
alias lessons='cd ~/Documents/Ferris_Lessons/'
alias latin='cd ~/Documents/School/introtoLat/'
alias tls='ls -tr'
alias blender=/Applications/Blender/blender.app/Contents/MacOS/blender

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

function mp2l(){
	ds
	python3 MP2.py $1
}

function mp2e(){
	ds
	python3 MP2.py $1 eventual
}

function as(){
	cd $1
	ls -al
}

function cm(){
	open https://www.gmail.com
}

function newtab() {
	if [ "$PWD" != "$MYOLDPWD" ]; then
		MYOLDPWD="$PWD";
		printf "\e]1;${PWD##*/}\a"
		fi
}
export PROMPT_COMMAND=newtab

function ebash(){
	cd
	vim .bash_profile
}

function vimbash(){
	vim ~/.vimrc
}

function send(){
	git commit -am "$1"
	git push
}

function pull(){
	git stash
	git pull
}
  
# Tell grep to highlight matches
  export GREP_OPTIONS='--color=auto'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
