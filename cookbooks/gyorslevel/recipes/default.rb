#
# Cookbook Name:: gyorslevel
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "#{node[:jetty][:webapp_dir]}/root" do
  recursive true
  action :delete
end

remote_file "#{node[:jetty][:webapp_dir]}/root.war" do
  source "https://www.dropbox.com/s/pcza5mqh69srlw7/gyorslevel-1.0-20120615.085639-7.war?dl=1"
  group node[:jetty][:group]
  owner node[:jetty][:user] 
  mode "0644"
  notifies :restart, "service[jetty]"
end
