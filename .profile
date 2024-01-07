# XDG paths
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# Relative configs env vars
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XSERVERRC=$XDG_CONFIG_HOME/X11/xserverrc
export HISTFILE=$XDG_STATE_HOME/bash/history
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export IPYTHONDIR=$XDG_CONFIG_HOME/ipython
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java

export EDITOR=/usr/bin/nvim
export SUDO_EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
export MANPAGER='less -R --use-color -Dd+r -Du+b'
export MANROFFOPT='-P -c'

export PATH=$PATH:$HOME/.local/scripts/
