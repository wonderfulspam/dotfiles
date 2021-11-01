abbr -a ls 'lsd'
abbr -a cat 'bat'
abbr -a gm 'git commit -m'
abbr -a chk 'git checkout feature/ticket'
abbr -a gdu 'git diff @{upstream} @'
abbr -a tkibana 'ssh -g -L5602:ngcmslog01tl:5601 ngcmsweb01tl'
abbr -a pkibana 'ssh -g -L5602:ngcmslog01pl:5601 ngcmsweb01pl'

starship init fish | source
zoxide init fish | source

setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
setenv FZF_CTRL_R_OPTS '--exact'
setenv FZF_CTRL_T_OPTS "--exact --preview='bat --style=numbers --color=always {}'"

setenv MANPAGER "nvim -c 'set ft=man' -"
setenv MANWIDTH 80
export EDITOR=vim

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
# Add GOPATH, GOROOT, devtools-bin, perl-bin to PATH
export PATH="$GOPATH/bin:$GOROOT/bin:$HOME/Documents/code/devtools-md/src/bin:$HOME/perl5/bin:$PATH"

export DOCKER_BUILDKIT="1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && bass source "$NVM_DIR/nvm.sh"  # This loads nvm
