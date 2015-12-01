# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012
#
# Modified by: Jaime Andrés Dávila
# Just a few changes, the prompt just displays the directory and git branch is sorounded by brackets



if [ $UID -eq 0 ]; then NCOLOR="088"; else NCOLOR="088"; fi
local return_code="%(?..%{$fg[088]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[088]%1/\
$(git_prompt_info) \
$FG[52]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[088]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[166]'

# right prompt
RPROMPT='$my_gray%n@%m%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[088][:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[088]]%{$reset_color%}"
