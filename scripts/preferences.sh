#!/usr/bin/env bash

echo "Setting Preferences"

# Desktop & Dock
defaults write com.apple.dock autohide -bool true      # Automatically hide and show the Dock
defaults write com.apple.dock show-recents -bool false # Show suggested and recent apps in Dock
defaults write com.apple.dock launchanim -bool false   # Animate opening applicaitons
defaults write com.apple.dock mineffect -string scale  # Minimize window using (scale or genie)
defaults write com.apple.dock tilesize -int 50         # Dock size
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.WindowManager EnableTiledWindowMargins -bool false # Tiled window have margins
killall Dock

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXRemoveOldTrashItems -bool true # Empty trash after 30 days
defaults write com.apple.finder NewWindowTarget -string PfHm     # New Finder windows show
killall Finder

# Battery
sudo pmset -b lowpowermode 1 # Low Power Mode (Only on Battery)
sudo pmset -a displaysleep 3 # Display sleeps after 3 minutes of no use

# Appearance
defaults write NSGlobalDomain AppleScrollerPagingBehavior -bool true # Click in the scrollbar to (Jump to the spot that's clicked)

# Sound
sudo nvram StartupMute=%01                               # Play sound on startup (off)
defaults write -g com.apple.sound.uiaudio.enabled -int 0 # Play user interface sound effects

# Mouse & Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true                  # Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true # Tap to click

killall SystemUIServer

# Wallpaper & Screensaver
osascript -e 'tell application "System Events" to set picture of every desktop to "~/Pictures/wallpaper/panigale_v4r_2(mbp14).jpg"'
