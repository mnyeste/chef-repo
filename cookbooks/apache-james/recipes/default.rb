#
# Cookbook Name:: apache-james
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

james_home = "apache-james-#{node[:james][:version]}"
james_tarball = "#{james_home}-app.tar.gz"

package "libc6-i386" do
  action :install
end

remote_file "/tmp/#{james_tarball}" do
  source "#{node[:james][:mirror]}/#{node[:james][:version].sub('-','')}/#{james_tarball}"
  mode "0644"
  action :create_if_missing
  not_if "test -d /opt/#{james_home}"
end

execute "tar -C /opt -xzf /tmp/#{james_tarball}" do
  user "root"
  not_if "test -d /opt/#{james_home}"
end

link "/etc/init.d/james" do
 to "/opt/#{james_home}/bin/james"  
end 

service "james" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
  priority 99 
end
