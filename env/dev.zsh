# simple rust
rust()
{
  name="$1"
  rustc "$name"
  ./${name:0-0:4}
}

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/v/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# java
export JAVA_HOME="/usr/lib/jvm/default-runtime"
export JDK_HOME="/usr/lib/jvm/default-runtime"
