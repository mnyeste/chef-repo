#
# Cookbook Name:: apache-james
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

james_bin = "/opt/apache-james-#{node[:james][:version]}/bin"
james_tarball = "apache-james-#{node[:james][:version]}-app.tar.gz"

package "libc6-i386" do
  action :install
end

remote_file "/tmp/#{james_tarball}" do
  source "#{node[:james][:mirror]}/#{node[:james][:version].sub('-','')}/#{james_tarball}"
  mode "0644"
  action :create_if_missing
  not_if "test -d #{james_bin}"
end

execute "tar -C /opt -xzf /tmp/#{james_tarball}" do
  user "root"
  not_if "test -d #{james_bin}"
end

link "/etc/init.d/james" do
 to "#{james_bin}/james"  
end 

service "james" do
  supports :status => true, :restart => true
  action [ :enable, :start ]
  priority 99 
end

execute "#{james_bin}/james-cli.sh -h localhost adddomain #{node[:james][:domain]}" do
  user "root"
  retries 3
  retry_delay 15
  not_if "#{james_bin}/james-cli.sh listdomains -h localhost|grep ^#{node[:james][:domain]}$"
end 
