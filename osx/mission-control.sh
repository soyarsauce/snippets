# Disable animations
defaults write com.apple.dock expose-animation-duration -float 0; killall Dock;

# Reset to defaults
defaults delete com.apple.dock expose-animation-duration; killall Dock;