
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Initialization for FDK command line tools.Wed Apr 19 07:51:07 2017
# FDK_EXE="/home/dalton/bin/FDK/Tools/linux"
# PATH=${PATH}:"/home/dalton/bin/FDK/Tools/linux"
# export PATH
# export FDK_EXE
# alias lr='ls -hartl'
# alias get='curl -OL'
# alias g='grep -i'

# source ~/.bash/git-prompt.sh # Show git branch name at command prompt
# export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

# # Terminal Prompt:
# # Include git branch, use PROMPT_COMMAND (not PS1) to get color output (see git-prompt.sh for more)
 # export PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "' # Git branch (relies on git-prompt.sh)

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
