pkgs=(pacman dnf)

for pkg in ${pkgs[*]}; do
    if [ -n "$(command -v "$pkg")" ];then
        source "$ZSH/fn/pkg/${pkg}.zsh"
    fi
done

