#!/usr/bin/env bash

echo "Setting several OSX-specific defaults"

if [ "$(uname -s)" == "Darwin" ]; then
  echo "› sudo softwareupdate -i -a"
  sudo softwareupdate -i -a

  # Sets reasonable OS X defaults.

  # Disable press-and-hold for keys in favor of key repeat.
  defaults write -g ApplePressAndHoldEnabled -bool false

  # Always open everything in Finder's list view. This is important.
  defaults write com.apple.Finder FXPreferredViewStyle Nlsv

  # Show the ~/Library folder.
  chflags nohidden ~/Library

  # Set a really fast key repeat.
  defaults write NSGlobalDomain KeyRepeat -int 0

  # Set the Finder prefs for showing a few different volumes on the Desktop.
  defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
  defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

  # Disables itunes open on headphones button, SIP locks this, and has to be run from recovery mode
  # launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

  # Disable the crash reporter
  defaults write com.apple.CrashReporter DialogType -string "none"

  # Disable Notification Center and remove the menu bar icon
  launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

  # Finder: show status bar
  defaults write com.apple.finder ShowStatusBar -bool true

  # Disable Dashboard
  defaults write com.apple.dashboard mcx-disabled -bool true

  # Don’t display the annoying prompt when quitting iTerm
  defaults write com.googlecode.iterm2 PromptOnQuit -bool false

  # Show hidden files in finder
  defaults write com.apple.finder AppleShowAllFiles YES
  killall Finder /System/Library/CoreServices/Finder.app

  # Auto hide the dock
  osascript -e "tell application \"System Events\" to set the autohide of the dock preferences to true"

	# disable system startup sound
	echo 'turning off system startup chime :)' # note: to re-enable it, `sudo nvram –d SystemAudioVolume`
	sudo nvram SystemAudioVolume=%80
fi

