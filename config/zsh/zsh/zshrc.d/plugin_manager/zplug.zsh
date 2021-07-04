source ~/.zplug/init.zsh

# Theme
zplug romkatv/powerlevel10k, as:theme, depth:1

# Cd
zplug "b4b4r07/enhancd", use:init.sh
zplug "mollifier/cd-gitroot"

# Syntax highlighting
# zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Completion
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
# zplug "Aloxaf/fzf-tab"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

