# 基础cdls
cdls()
{
  cd "$1" && echo $(pwd) && ls -ah
}
# cdls

# 上一个工作路径
i_last_pwd="-"
i_before_change_pwd()
{
   i_last_pwd=$(pwd)
}


# todo 历史队列 左右横跳 (u/r)
i_pwd_s=("-")
i_cur=0
i_add_pwd()
{
  length="${#i_pwd_s[*]}"
  #last=
}


# 交换工作路径
t()
{
 tmp_str=$(pwd)
 cdls $i_last_pwd
 i_last_pwd="$tmp_str"
}


# 跳转目录后ls
c()
{
  i_before_change_pwd
  cdls $1
}


# 快速跳转并ls
zls()
{
  i_before_change_pwd
  z "$1"
  cdls
}
alias z=zls


# 上级目录
b()
{
  i_before_change_pwd
  tmp_str=""
  num="$1"
  # 测试发现不能用==判断相等, 只能用=, 不然会 "= not found"
  if [ "$num" = "" ]; then
    num="1"
  fi

  while [ $num -ge 1 ]; do
      tmp_str="$tmp_str../"
      ((num--))
  done

  cdls $tmp_str
}
alias bb="b 2"
alias bbb="b 3"
alias bbbb="b 4"
alias bbbbb="b 5"
alias bbbbbb="b 6"
alias bbbbbbb="b 7"
alias bbbbbbbb="b 8"
alias bbbbbbbbb="b 9"
alias bbbbbbbbbb="b 10"


# 一键回家
h() {
  c ~
}


# 目录大小
len()
{
  #echo "total: $(expr $(ls -a $1 | wc -l) - 2) $(du -hs $1)"

  c="$(ls -a $1 | wc -l)"
  total="$(expr "$c" - 2)"
  echo "total: $total $(du -hs $1)"
}


# 复制当前路径 (copy path)
cpp()
{
  # xorg: xclip
  echo "$(pwd)" | xclip -sel clip
}

# 把app的入口软链接到$BIN_PATH
app()
{
    if [ "$1" != "" ] && if [ -x "$1" ]; then
        r_path=$(realpath "$1")
        ln -s "$r_path" "$BIN_PATH/$2"
    fi
}
