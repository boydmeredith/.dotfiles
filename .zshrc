# --- BRODY LAB CVS ---
export CVSROOT=:ext:brodylab@brodylab.princeton.edu/cvs

# --- COMMAND ALIASES ---
alias chrome="open -a \"Google Chrome\""
alias gmail="open -a \"Google Chrome\" https://gmail.com"
alias vscode="open -a \"Visual Studio Code\""
alias notes="open -a /System/Applications/Notes.app"
alias slack="open -a /Applications/Slack.app"
alias spotify="open -a /Applications/Spotify.app"
alias skim="open -a \"Skim\""
alias jl='jupyter lab'
alias fiji="/Applications/Fiji.app/Contents/MacOS/ImageJ-macosx"
alias l="ls -lah"
alias ls="ls -lh"
alias c="cd"
alias v="vim"
alias editzshrc="vim ~/.zshrc"
alias sourcezshrc="source ~/.zshrc"
alias showsizes="du -s * | sort  -n -r"

# ssh alias
# princeton
alias spock="ssh jtb3@spock.princeton.edu"
alias scotty="ssh jtb3@scotty.princeton.edu"
alias brodycomp="ssh jtb3@brodycomp1.princeton.edu"
# swc 
alias sshswc="ssh tylerbm@ssh.swc.ucl.ac.uk"

alias matlab="/Applications/MATLAB_R2022b.app/bin/matlab -nosplash "
alias matlab="open -a \"MATLAB_R2022b\""
alias logseq="open -a \"/Applications/Logseq.app\""
alias keynote="/Applications/Keynote.app/Contents/MacOS/Keynote &"

# Sync data and results for waiting project
alias fetch-wt-results="rsync -avz --progress jtb3@scotty.princeton.edu:/jukebox/brody/jtb3/projects/waiting/results/ $HOME/projects/waiting/results/"
alias push-wt-data="rsync -avz --progress $HOME/projects/waiting/data/* jtb3@scotty.princeton.edu:/jukebox/brody/jtb3/projects/waiting/data/ --exclude=archive --exclude='example*'"

alias push-wt-results="rsync -avz --progress $HOME/projects/waiting/results/* jtb3@scotty.princeton.edu:/jukebox/brody/jtb3/projects/waiting/results/ "

# git alias for dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# --- GIT ALIASES AND PROMPT ---
# tab complete
autoload -Uz compinit && compinit
# prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
PROMPT='%B%F{245}%1~%f%b %# '
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:*' formats '%F{219}(%b)%f'
#zstyle ':vcs_info:*' enable git
# aliases
alias gits="git status"
alias gd="git diff"

# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export LD_LIBRARY_PATH=$HOME/.julia/conda/3/lib:$LD_LIBRARY_PATH

alias load-project="source ~/.load_project.sh"
alias create-new-project="source ~/.create_new_project.sh"
alias start-workday="open -a /Applications/Microsoft\ Outlook.app; open -a /Applications/Slack.app; cd projects; ls"
alias open_github="open $github"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/tyler/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<
