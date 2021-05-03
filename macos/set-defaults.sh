#!/bin/sh

# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

## User interface

# Use light mode.
defaults write -g AppleInterfaceStyle -string "Light"
# Possible values: "Dark", "Light"

# Set Finder sidebar icon size to small.
defaults write -g NSTableViewDefaultSizeMode -int 1
# Possible values: small (1), medium (2), …?

# Show scrollbars when scrolling.
defaults write -g AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs).
defaults write -g AppleKeyboardUIMode -int 3


## Language & Region

# Set language and text formats.
defaults write -g AppleLanguages -array "en-GB"
defaults write -g AppleLocale -string "en_GB@currency=EUR"
defaults write -g AppleMeasurementUnits -string "Centimeters"
defaults write -g AppleTemperatureUnit -string "Celsius"
defaults write -g AppleMetricUnits -bool true


## Keyboard

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a really fast key repeat.
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15


## Finder & AirDrop

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Avoid creating .DS_Store files on network and USB volumes.
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Always open everything in Finder's column view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show all filename extensions.
defaults write -g AppleShowAllExtensions -bool true

# Expand save panel by default.
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Show the ~/Library folder.
chflags nohidden ~/Library


## Dock

# Automatically show and hide the Dock
defaults write com.apple.dock autohide -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36


## Safari

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write -g WebKitDeveloperExtras -bool true


## Terminal

# Set up Terminal.
defaults write com.apple.Terminal ShowLineMarks -int 0
