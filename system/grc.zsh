# GRC colorizes nifty unix tools all over the place
#

if which brew > /dev/null 2>&1; then
  if $(grc &>/dev/null); then
    source `brew --prefix`/etc/grc.bashrc
  fi
fi

if $(grc &>/dev/null); then
  source /etc/profile.d/grc.bashrc
fi
