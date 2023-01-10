dir=$(dirname $(readlink -f "$0"))
source "$dir/git.zsh" 
source "$dir/build.zsh" 

update_git_projs()
{
    msg=""
    
    omz_msg=$(_update_git_proj omz $OMZ origin master)
    msg="$msg \n$omz_msg" 
    
    # nvim_msg=$(_update_git_proj nvim $CONF_PATH/nvim github master)
    # msg="$msg \n$nvim_msg"
    
    # icalingua_msg=$(_update_git_proj icalingua++ $PROJECT_PATH/i/Icalingua-plus-plus github development _build_icalinguapp)
    # msg="$msg \n$icalingua_msg"
    
    echo "$msg"
}

