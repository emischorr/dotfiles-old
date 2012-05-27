# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# hub aliased as git
# https://github.com/defunkt/hub
if $(hub &>/dev/null)
then
  #alias git="hub"
  eval "$(hub alias -s zsh)"
  function git(){hub "$@"}
fi
