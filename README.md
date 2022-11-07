# conf_zsh

``` shell
sudo pacman -S zsh zsh-completions fzf fd bat exa
chsh -s "$(which zsh)"

export ZSH=~/.config/zsh
git clone git@github.com:67906980725/conf_zsh.git -l $ZSH
cd $ZSH
git submodule add https://github.com/yaocccc/omz

echo '
export ZSH=~/.config/zsh
. $ZSH/init.zsh
' >> ~/.zshenv
```
