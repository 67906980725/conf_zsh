reenv()
{
  source ~/.zshenv
}
alias refr="reenv"

scan()
{
  sudo iwctl station wlan0 scan
}

# vscode editor
alias vs="vs -n"
mg()
{
  if [ "$1" = "" ]; then
      vs .
  else
      z "$1"
      vs .
  fi
}
alias note="cd ${NOTE_PATH} && mg"
alias work="cd ${NOTE_PATH}/nutstore/office && mg"


# 把app的入口软链接到$BIN_PATH
app()
{
    if [ "$1" != "" ] && if [ -x "$1" ]; then
        r_path=$(realpath "$1")
        chmod +x "$r_path"
        ln -s "$r_path" "$BIN_PATH/$2"
    fi
}
desk()
{
  # $1: bin_name $2:app_name $3: icon_name
  if [ "$1" != "" ]; then
        r_path=$(realpath "$1")
        chmod +x "$r_path"
        icon="$3"
        echo "
[Desktop Entry]
Encoding=UTF-8
Type=Application
Terminal=false
Icon=\"${icon}\"
Exec=sh -c \"exec ${r_path}\"
Name=$2
Name[zh_CN]=$2
Comment=$2
Comment[zh_CN]=$2
Categories=Tool
        " > ~/.local/share/applications/${2}.desktop
  fi
  app $1 $2
}

# task
k()
{
  ps -ef | grep "$1" | awk '{print $2}' | sed '$d' | xargs kill -9
}
kwine()
{
  k "\.exe"
}
