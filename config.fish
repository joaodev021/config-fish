if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Remove a mensagem inicial
set fish_greeting ""

# Configuração do terminal
set -gx TERM xterm-256color

# Configuração de tema
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

# Editor padrão
set -gx EDITOR nvim

# Caminhos no PATH
set -gx PATH ~/bin ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH
# PHP
set -gx PATH /home/joaoarch/.local/share/mise/installs/php/8.4.1/bin $PATH
/home/joaoarch/.local/bin/mise activate fish | source
~/.local/bin/mise activate fish | source
set -x DISPLAY $(ip route | grep default | awk '{print $3}'):0
set -x SSH_AUTH_SOCK /tmp/ssh-XXXXXXhrtaDy/agent.24156
set -x SSH_AGENT_PID 24156
set -x DISPLAY 172.26.64.1:0
set -Ux XDG_RUNTIME_DIR /run/user/(id -u)
set -Ux DBUS_SESSION_BUS_ADDRESS unix:path=$XDG_RUNTIME_DIR/bus
set -Ux GHQ_ROOT ~/.ghq
