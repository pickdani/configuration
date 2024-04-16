export EDITOR='vim'
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
setopt prompt_subst
prompt='[%~%F{green}$(git_branch_name)%F{reset}]$ '

# ---

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' '$branch''
  fi
}
