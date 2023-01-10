export _OMZ_APPLY_CHPWD_HOOK="false"
source $ZSH/omz/omz.zsh

for item in `ls $ZSH/env`; do
	source "$ZSH/env/$item"
done

for item in `ls $ZSH/fn`; do
	f="$ZSH/fn/$item"
  if [ ! -d "$f" ]; then
    source "$f"
  elif [ -d "$f" ]; then
    source "$f/${item}.zsh"
  fi
done

