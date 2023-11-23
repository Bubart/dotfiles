#!/usr/bin/env fish
# No greeting text for now
set fish_greeting

# Set some stuff for out path
fish_add_path -g ~/.local/bin
fish_add_path -g ~/.cargo/bin

# Set default editor to vim
set -Ux EDITOR "nvim"
set -Ux MANGOHUD 1

# Setup our default FZF command
set -Ux FZF_DEFAULT_COMMAND "rg --files --hidden -g '!.git'"
set -Ux FZF_CTRL_T_COMMAND  "$FZF_DEFAULT_COMMAND"
set -Ux FZF_CTRL_T_OPTS     "--preview 'bat -n --color=always {}'"
set -Ux FZF_DEFAULT_OPTS    "--height 30%"

# Use BAT for our man pages
set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"

# abbr for zoxide interactive
abbr zx "zi"
abbr zz "z -"

# Replace cat with batcat
alias cat "bat --plain"

# Replace fish help with command for colorfull help calls
function help
    $argv --help 2>&1 | bat --plain --language=help
end

# Replace default ls command with exa
alias ls "exa"

# Replace tree command with exa
alias tree "exa --tree"

# Some more ls abbrs
alias l  "ls -lF"
alias la "ls -aF"
alias ll "ls -alF"

# I want v to open vi and vi to open vim
alias v       "nvim"
alias vi      "nvim"
alias vim     "nvim"
alias vd      "nvim -d"
alias vimdiff "nvim -d"

# abbr g to git (saves a few key strokes)
alias g  "git"
alias gg "git status"

# Kitten ssh
alias ssh "kitten ssh"

# abbr for quiting the command line
alias :q  "exit"
alias :qa "exit"
alias :wq "exit"
alias q   "exit"
alias qa  "exit"
alias wq  "exit"

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 283457
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection

# Load fzf
fzf_key_bindings

# Load zoxide
zoxide init fish | source

# Load starship prompt
starship init fish | source
