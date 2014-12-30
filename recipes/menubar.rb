execute "Disable menu bar transparency" do
  # from http://knoopx.net/os-x-lion-tweaks
  command "defaults write -g AppleEnableMenuBarTransparency -bool false"
end
