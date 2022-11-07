
cdls()
{
  cd "$1" && echo $(pwd) && ls -ah
}
alias c=cdls
c

len()
{
  #echo "total: $(expr $(ls -a | wc -l) - 2) $(du -hs)"

  c="$(ls -a | wc -l)"
  total="$(expr "$c" - 2)"
  echo "total: $total $(du -hs)"
}

