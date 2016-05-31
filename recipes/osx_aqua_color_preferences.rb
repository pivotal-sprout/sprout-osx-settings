aqua_color_variants = { 'blue' => 1, 'graphite' => 6 }

osx_defaults 'Set aqua appearance color variant' do
  domain "/Users/#{node['sprout']['user']}/Library/Preferences/.GlobalPreferences"
  key 'AppleAquaColorVariant'
  integer aqua_color_variants[node['sprout']['settings']['aqua_color']]
end
