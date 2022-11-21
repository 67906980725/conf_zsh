pkgs=(pacman dnf)

for pkg in ${pkgs[*]}; do
    if [ -n "$(command -v "$pkg")" ];then
        source "$ZSH/fn/pkg/${pkg}.zsh"
    fi
done

source "$ZSH/fn/git_pkg/mod.zsh"
_update_with_other()
{
    update
    update_git_projs
}
alias update="_update_with_other"
