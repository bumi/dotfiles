alias g='git'

if which hub > /dev/null 2>&1; then
  alias git=hub
fi

#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function current_repository() {

  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo $(git remote -v | cut -d':' -f 2)
}

# these aliases take advantage of the previous function
alias gpull='git pull origin $(current_branch)'
alias gpush='git push origin $(current_branch)'
alias gpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
