#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nginx"

template "/etc/nginx/sites-available/default" do
  source "default-site.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :reload, "service[nginx]"
end


service 'nginx' do
  supports :status => true, :restart => true, :reload => true
  action :start
end


