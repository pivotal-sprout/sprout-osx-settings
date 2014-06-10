ruby_block "Copy Screen Sharing to /Applications" do
  block do
    FileUtils.cp_r("/System/Library/CoreServices/Screen\ Sharing.app","/Applications/", preserve: true)
  end
  only_if do
    File.exists?("/System/Library/CoreServices/Screen\ Sharing.app") &&
      !File.exists?("/Applications/Screen Sharing.app")
  end
end

execute "Enabling Screen Sharing for All Users" do
  command "/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -off -restart -agent -privs -all -allowAccessFor -allUsers"
end

ruby_block "assure that /Applications/Screen Sharing.app was successfully created" do
  block do
    raise "Copying /Applications/Screen Sharing.app to /System/Library/CoreServices/Screen Sharing.app failed." unless File.exists?("/Applications/Screen Sharing.app")
  end
end

ruby_block "test to see if screen-sharing is enabled" do
  block do
    require 'socket'
    vnc_port = 5900
    begin
      s = TCPSocket.open('localhost',vnc_port)
    rescue => e
      raise "Couldn't connect to screen-sharing: " << e
    end
    s.close
  end
end
