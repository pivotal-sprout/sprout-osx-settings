osx_defaults "ask for password when screen is locked" do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  integer 1
end

osx_defaults "wait 60 seconds between screensaver & lock" do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  float 60
end

plist_dir = "#{node['sprout']['home']}/Library/Preferences/ByHost"
domains = Dir["#{plist_dir}/com.apple.screensaver.*.plist"].map do |f| 
  domain = File.basename(f).chomp('.plist')
  "ByHost/#{domain}"
end
domains.each do |domain|
  osx_defaults "set screensaver timeout" do
    domain domain
    key 'idleTime'
    integer 600
  end
end

execute "set display, disk and computer sleep times" do
  command "pmset -a displaysleep 20 disksleep 15 sleep 0"
end
