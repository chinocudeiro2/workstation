package "tree"

file "/etc/motd" do
  content "Property of Luis
  IPADDRESS: #{node['ipaddress']}
  HOSTNAME:  #{node['hostname']}
  MEMORY:    #{node['memory']['total']}
  CPU:       #{node['cpu']['0']['mhz']}
"

  mode 0644
  owner 'root'
  group 'root'
end

