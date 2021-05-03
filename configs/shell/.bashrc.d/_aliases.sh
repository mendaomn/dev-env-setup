# Sets up aliases

# -- grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# -- cd
alias ..="cd .."
alias dev='cd $HOME/Documents/Development'

# -- rm
alias rimraf="rm -rf"

# -- git
alias g='git'
alias groot='cd $(git rev-parse --show-toplevel)'

# -- curl with timing info
curl_time() {
    curl -so /dev/null -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" "$@"
}

# -- sprint
alias week='date +%V'
