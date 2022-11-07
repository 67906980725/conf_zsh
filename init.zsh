source $ZSH/omz/omz.zsh

for item in `ls $ZSH/env`; do
	source "$ZSH/env/$item"
done

for item in `ls $ZSH/fn`; do
	f="$ZSH/fn/$item"
    [ ! -d "$f" ] && source "$f"
done

