alias img="mpv --image-display-duration=inf --fs --loop=inf"
alias imv="mpv --shuffle --border=yes --volume=56 --geometry=100%:0 --autofit=20% --ontop-level=system --ontop ${MV_DIR}"
alias imusic="mpv --no-video --shuffle --volume=56 ${MV_DIR}"

mg()
{
  if [ "$1" = "" ]; then
      nvim .
  else
      z "$1"
      nvim .
  fi
}

alias note="cd ${NOTE_DIR} && mg"
