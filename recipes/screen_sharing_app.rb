screen_sharing_app = "Screen\ Sharing.app"
screen_sharing_dir = if node["platform_version"] =~ /10\.9/
  "/System/Library/CoreServices"
else # assume Yosemite/10.10
  "/System/Library/CoreServices/Applications"
end

src = File.join(screen_sharing_dir, screen_sharing_app)

ruby_block "Copy Screen Sharing to /Applications" do
  block do
    FileUtils.cp_r(src, "/Applications/", preserve: true)
  end
  only_if { File.exists?(src) && !File.exists?(File.join("/Applications", screen_sharing_app)) }
end

ruby_block "ensure /Applications/Screen Sharing.app exists" do
  block do
    raise "Copying to '/Applications/Screen Sharing.app' from '#{src}' failed."
  end
  not_if { File.exists?(File.join("/Applications", screen_sharing_app)) }
end
