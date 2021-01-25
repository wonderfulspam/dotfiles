abbr -a ls 'lsd'
abbr -a cat 'bat'
abbr -a gm 'git commit -m'
abbr -a chk 'git checkout feature/ticket'
abbr -a gdu 'git diff @ @{upstream}'
abbr -a kukibana 'ssh -g -L5601:ngcmslog01tl:5601 ngcmsweb01'

starship init fish | source

setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_T_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_R_OPTS '--exact'

setenv MANPAGER "nvim -c 'set ft=man' -"
setenv MANWIDTH 80
export EDITOR=vim
