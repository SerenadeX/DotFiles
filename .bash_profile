parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


export PS1="\[\033[0;36m\]\u\[\033[0m\]@\[\033[0;32m\]\h://\[\033[0;35m\]\w \[\033[0;31m\] \[\033[31m\]\$(parse_git_branch):\#=> \[\033[0m\]"
