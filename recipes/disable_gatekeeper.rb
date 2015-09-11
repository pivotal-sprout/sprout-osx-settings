execute "disable gatekeeper"   do
  command "spctl --master-disable"
end
