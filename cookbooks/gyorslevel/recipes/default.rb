#
# Cookbook Name:: gyorslevel
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#




remote_file "#{node[:jetty][:webapp_dir]}/root.war" do
  source "https://www.dropbox.com/s/gppqi5m36n1oikf/gyorslevel-1.0-20120615.080024-4.war?dl=1"
  group node[:jetty][:group]
  owner node[:jetty][:user] 
  mode "0644"
  notifies :restart, "service[jetty]"
end

#cookbook_file "#{node[:jetty][:context_dir]}/gyorslevel.xml" do
#  source "gyorslevel.xml" 
#  group node[:jetty][:group]
#  owner node[:jetty][:user] 
#  mode "0644"
#end
