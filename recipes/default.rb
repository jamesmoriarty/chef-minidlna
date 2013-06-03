package "minidlna"

service "minidlna" do
  supports :enalbe => true, :start => true, :stop => true, :restart => true
  action [ :enable, :start ]
end

template "/etc/minidlna.conf" do
  source "minidlna.conf.erb"
  owner  "minidlna"
  group  "minidlna"

  notifies :"restart", resources(:service => "minidlna")
end
