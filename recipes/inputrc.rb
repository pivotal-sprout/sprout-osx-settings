inputrc_location = "#{node['sprout']['home']}/.inputrc"

template inputrc_location do
  owner node['sprout']['user']
  source "inputrc.erb"
end
