#
# Cookbook Name:: jetty6
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


group node[:jetty][:group] do
  action :create
end

user node[:jetty][:user] do
  gid  node[:jetty][:group]
  shell "/bin/false"
  home  node[:jetty][:home]
end

remote_file node[:jetty][:tarball] do
  source   node[:jetty][:url]
  checksum node[:jetty][:checksum]
  mode     0644
end


execute "unpack jetty" do
  command "tar xzf #{node[:jetty][:tarball]} -C #{node[:jetty][:parent_dir]}"
  not_if "test -d #{node[:jetty][:install_dir]}"
end

execute "setting jetty permissions" do
  command  "chown -R #{node[:jetty][:user]}:#{node[:jetty][:group]} #{node[:jetty][:install_dir]}"
end

link node[:jetty][:home] do
 to node[:jetty][:install_dir]  
end 

link "/etc/init.d/jetty" do
 to "#{node[:jetty][:home]}/bin/jetty.sh"  
end 

execute "removing default webapps" do
  command  "rm -rf #{node[:jetty][:webapp_dir]}/*"
  command  "rm -rf #{node[:jetty][:context_dir]}/test*"
  user node[:jetty][:user]
  only_if "test -d #{node[:jetty][:webapp_dir]}/test"
end

service "jetty" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
  priority 99 
end