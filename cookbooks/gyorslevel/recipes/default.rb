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

template "/etc/gyorslevel/gyorslevel.conf" do
  source "gyorslevel_conf.erb"
  group node[:jetty][:group]
  owner node[:jetty][:user]
  notifies :restart, "service[jetty]"
end

directory node[:gyorslevel][:staticstore] do
  recursive true
  group node[:jetty][:group]
  owner node[:jetty][:user] 
end

template "#{node[:jetty][:context_dir]}/static.xml" do
  source "static_xml.erb"
  notifies :restart, "service[jetty]"
end

remote_file "#{node[:jetty][:webapp_dir]}/root.war" do
  source "#{node[:gyorslevel][:war][:url]}?dl=1"
  checksum node[:gyorslevel][:war][:checksum]
  group node[:jetty][:group]
  owner node[:jetty][:user] 
  mode "0644"
  notifies :restart, "service[jetty]"
end
