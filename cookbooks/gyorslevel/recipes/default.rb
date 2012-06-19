#
# Cookbook Name:: gyorslevel
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

remote_file "#{node[:jetty][:webapp_dir]}/root.war" do
  source "https://www.dropbox.com/s/7uanxd6q6ko0sfl/gyorslevel-1.0-20120619.125714-8.war?dl=1"
  checksum "075a60262b2820d932504dce889e9fd7680f3a6acb6d97e11eb7f6580e4f7caf"
  group node[:jetty][:group]
  owner node[:jetty][:user] 
  mode "0644"
  notifies :restart, "service[jetty]"
end
