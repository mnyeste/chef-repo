#
# Cookbook Name:: apache-james
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "libc6-i386" do
  action :install
end

remote_file node[:james][:tarball]  do
  source node[:james][:url]
  checksum node[:james][:checksum]
  mode "0644"
end

execute "unpack james" do
  command "tar xzf #{node[:james][:tarball]} -C #{node[:james][:parent_dir]}"
  user "root"
  not_if "test -d #{node[:james][:install_dir]}"
end

link node[:james][:home] do
 to node[:james][:install_dir]  
end 

link "/etc/init.d/james" do
 to "#{node[:james][:bin]}/james"  
end 

service "james" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
  priority 80 
end
