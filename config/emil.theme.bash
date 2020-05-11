#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" ${green}|"
SCM_THEME_PROMPT_SUFFIX="${green}|"
SCM_NONE_CHAR=""
SCM_GIT_CHAR=""

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

__shorten_branch() {
  PROMPT_INFO=$(scm_prompt_char_info)
  if [[ -z "$PROMPT_INFO" ]]; then
    return 0
  fi
  PROMPT_INFO=${PROMPT_INFO@P}
  TICKET=$(echo "$PROMPT_INFO" | grep -P -o "(\d{5})")
  if [ ! -z "$TICKET" ]; then
     PROMPT_INFO=${PROMPT_INFO/feature\/ticket$TICKET/#$TICKET}
  fi
  printf "$PROMPT_INFO "
}

__user_display() {
  if [ $(id -u) -eq 0 ]; then
    printf "${red}#"
  else
    printf "${normal}$"
  fi
}

function prompt_command() {
    PS1="$(ruby_version_prompt)${yellow}\w${bold_cyan}$(__shorten_branch)${reset_color}$(__user_display)${reset_color} "
}

safe_append_prompt_command prompt_command
