#
# Cookbook Name:: gyorslevel
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/etc/gyorslevel" do
  group node[:jetty][:group]
  owner node[:jetty][:user] 
end

template "/etc/gyorslevel/gyorslevel.cfg" do
  source "gyorslevel_cfg.erb"
  group node[:jetty][:group]
  owner node[:jetty][:user] 
end

remote_file "#{node[:jetty][:webapp_dir]}/root.war" do
  source "#{node[:gyorslevel][:url]}?dl=1"
  checksum node[:gyorslevel][:checksum]
  group node[:jetty][:group]
  owner node[:jetty][:user] 
  mode "0644"
  notifies :restart, "service[jetty]"
end
