if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    # Custom greeting message
end

# Empty lines between command outputs
# function blank_before_cmd --on-event fish_preexec
#     # Eine Leerzeile ausgeben
#     printf "\n"
# end

# Copy tokyonight theme from https://github.com/folke/tokyonight.nvim/blob/main/extras/fish/tokyonight_storm.fish
#
# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 2e3c64
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
set -g fish_color_option $pink
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

# Colors for prompt (not in default tokyonight theme, custom)
set -g fish_color_user -o -b 7aa2f7 24283b
set -g fish_color_host -o -b 7aa2f7 24283b
set -g fish_color_cwd -b normal 7aa2f7
set -g fish_color_status $red
set -g fish_color_suffix 7aa2f7

set -g __fish_git_prompt_color $yellow
set -g __fish_git_prompt_color_prefix $yellow
set -g __fish_git_prompt_color_suffix $yellow
set -g __fish_git_prompt_color_branch $yellow
