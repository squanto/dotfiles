# borks my rvm
# alias reload!='. ~/.zshrc'

alias serve='ruby -run -e httpd . -p 9090'
alias brews='brew ls'
alias rs='rails server'
alias be='bundle exec'
alias deploy_blog='git add . && git commit --amend --no-edit && git push -f origin features/blog &&  bundle exec cap -s branch="features/blog" staging deploy'
alias expose='ngrok http 3000 --subdomain=hugomelo'

# b/c https://github.com/robbyrussell/oh-my-zsh/issues/31
alias curl='noglob curl'

alias cls='clear' # Good 'ol Clear Screen command
