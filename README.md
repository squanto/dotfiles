# hugo's dotfiles

Your dotfiles are how you personalize your system. These are mine.
Based on https://github.com/holman/dotfiles.

## what's inside

- some customizations for osx, git, ruby, tmux, vim, and zsh
- some tools in a brewfile

## install

```sh
git clone https://github.com/squanto/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

## bugs

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/squanto/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [@holmans](https://github.com/holman)'s dotfiles, who forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles). A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.

## todo

```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"

echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa" > ~/.ssh/config

ssh-add -K ~/.ssh/id_rsa

cat ~/.ssh/id_rsa | pbcopy
```

- sign into github to add ssh key

- clone repo + run install

- git config --global user.email "MY_NAME@example.com"

* dropbox
  - https://www.dropbox.com/downloading
  - sign in to
* 1password 6
  - https://app-updates.agilebits.com/download/OPM4
* iterm2
  - https://iterm2.com/downloads/stable/iTerm2-3_2_8.zip
* chrome
  - https://www.google.com/chrome/
* firefox
  - https://www.mozilla.org/en-US/firefox/new/
* slack
  - https://slack.com/downloads/mac
  - fohrcard.slack.com
* github desktop
  - https://central.github.com/deployments/desktop/desktop/latest/darwin
* postgres app
  - https://github.com/PostgresApp/PostgresApp/releases/download/v2.2.2/Postgres-2.2.2-11.dmg
* postico
  - https://eggerapps.at/postico/download/
* microsoft word, excel, powerpoint (app store)
* dash
  - https://newyork.kapeli.com/downloads/v4/Dash.zip
  - ruby, rails, html, css, bash, man pages, postgresql, http, redux, webpack, zsh, react, npm node.js, javascript
* mkdir ~/Developer
* solargraph gem
* vs code config + extensions
