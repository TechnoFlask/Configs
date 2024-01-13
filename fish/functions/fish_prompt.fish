function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l cyan (set_color cyan)
  set -l yellow (set_color -o bryellow)
  set -l red (set_color -o brred)
  set -l green (set_color -o brgreen)
  set -l white (set_color -o white)
  set -l normal (set_color normal)
  set -l blue (set_color brblue)

  set -l cwd_color (set_color a77afa)
  set -l git_branch_color (set_color 11b86c)


  # set -l cwd $cwd_color(basename (prompt_pwd))
  set -l cwd $cwd_color(pwd | sed "s|^$HOME|~|")

  if [ (_git_branch_name) ]
    set -l git_branch $git_branch_color(_git_branch_name)
    set git_info " $normal($green$git_branch"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end

    set git_info "$git_info$normal)"
  end

  echo -n -s $red '[' $blue (whoami) $yellow '@' $green (hostname -s) $normal ' ' $cwd $git_info $red ']' $normal '$ '
end

