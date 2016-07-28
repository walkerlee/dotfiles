# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/walkerlee/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Environment variable

# Make vim the default editor
set -x EDITOR                    "vim"

# Prefer US English and use UTF-8
set -x LANG                      "en_US.UTF-8"
set -x LC_ALL                    "en_US.UTF-8"

set -x GOPATH                    "$HOME/.go"
set -x ANDROID_HOME              "/usr/local/opt/android-sdk"

# Don’t save the log after quitting less
set -x LESSHISTFILE              "/dev/null"

# Less Colors for Man Pages
set -x LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -x LESS_TERMCAP_md \e'[01;31m'       # begin bold
set -x LESS_TERMCAP_me \e'[0m'           # end mode
set -x LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -x LESS_TERMCAP_so \e'[01;44;33m'    # begin standout-mode - info box
set -x LESS_TERMCAP_ue \e'[0m'           # end underline
set -x LESS_TERMCAP_us \e'[01;32m'       # begin underline
