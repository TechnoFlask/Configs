# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

set -g theme_display_ruby no
set -g theme_display_virtualenv no
set -g theme_display_node yes
set -g theme_display_pwd_on_second_line yes

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
