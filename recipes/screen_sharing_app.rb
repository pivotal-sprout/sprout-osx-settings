screen_sharing_app = "Screen\ Sharing.app"
screen_sharing_dir = "/System/Library/CoreServices"

ruby_block "Copy Screen Sharing to /Applications" do
  block do
    FileUtils.cp_r(File.join(screen_sharing_dir, screen_sharing_app), "/Applications/", preserve: true)
  end
  only_if do
    File.exists?(File.join(screen_sharing_dir, screen_sharing_app)) && !File.exists?(File.join("/Applications", screen_sharing_app))
  end
end

ruby_block "assure that /Applications/Screen Sharing.app was successfully created" do
  block do
    raise "Copying /Applications/Screen Sharing.app to /System/Library/CoreServices/Screen Sharing.app failed." unless File.exists?("/Applications/Screen Sharing.app")
  end
  only_if { File.exists?(File.join(screen_sharing_dir, screen_sharing_app)) }
end

