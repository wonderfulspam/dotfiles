abbr -a ls 'lsd'
abbr -a cat 'bat'
abbr -a gm 'git commit -m'
abbr -a chk 'git checkout feature/ticket'
abbr -a gdu 'git diff @{upstream} @'
abbr -a tkibana 'ssh -g -L5602:ngcmslog01tl:5601 ngcmsweb01tl'
abbr -a pkibana 'ssh -g -L5602:ngcmslog01pl:5601 ngcmsweb01pl'

starship init fish | source

setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_T_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_R_OPTS '--exact'

setenv MANPAGER "nvim -c 'set ft=man' -"
setenv MANWIDTH 80
export EDITOR=vim
