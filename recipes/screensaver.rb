osx_defaults "ask for password when screen is locked" do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  integer ( node['sprout']['screensaver']['ask_for_password'] ? 1 : 0 )
end

osx_defaults "wait #{node['sprout']['screensaver']['ask_for_password_delay']} seconds between screensaver & lock" do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  float node['sprout']['screensaver']['ask_for_password_delay']
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
    integer node['sprout']['screensaver']['timeout']
  end
end

execute "set display, disk and computer sleep times" do
  command "pmset -a displaysleep #{node['sprout']['screensaver']['displaysleep']} disksleep #{node['sprout']['screensaver']['disksleep']} sleep #{node['sprout']['screensaver']['sleep']}"
end
