#  _               _                        __ _ _      
# | |__   __ _ ___| |__    _ __  _ __ ___  / _(_) | ___ 
# | '_ \ / _` / __| '_ \  | '_ \| '__/ _ \| |_| | |/ _ \
# | |_) | (_| \__ \ | | | | |_) | | | (_) |  _| | |  __/
# |_.__/ \__,_|___/_| |_| | .__/|_|  \___/|_| |_|_|\___|
#                         |_|                           

[ -f "$HOME/.config/.profile" ] && source "$HOME/.config/.profile"

[ "$(tty)" = "/dev/tty1" ] && exec $HOME/.local/scripts/start-session

[[ -f ~/.bashrc ]] && . ~/.bashrc

export QSYS_ROOTDIR="/home/technoflask/intelFPGA_lite/23.1std/quartus/sopc_builder/bin"
