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

remote_file "/tmp/#{node[:james][:tarball]}" do
  source node[:james][:downloadurl]      
  mode "0644"
  action :create_if_missing
  not_if "test -d /opt/#{node[:james][:home]}"
end

execute "tar -C /opt -xzf /tmp/#{node[:james][:tarball]}" do
  user "root"
  not_if "test -d /opt/#{node[:james][:home]}"
end

link "/etc/init.d/james" do
 to "/opt/#{node[:james][:home]}/bin/james"  
end 

service "james" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
  priority 80
end
