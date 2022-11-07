
k()
{
  ps -ef | grep "$1" | awk '{print $2}' | sed '$d' | xargs kill -9
}
kwine()
{
  k "\.exe"
}

