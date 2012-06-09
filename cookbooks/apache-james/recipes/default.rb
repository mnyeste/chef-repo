#
# Cookbook Name:: apache-james
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

james_name="apache-james-3.0-beta4"
tarball="#{james_name}-app.tar.gz"


remote_file "/tmp/#{tarball}" do
  source "http://xenia.sote.hu/ftp/mirrors/www.apache.org/james/apache-james/3.0beta4/#{tarball}"       
  mode "0644"
  action :create_if_missing
end

execute "tar -C /opt -xzf /tmp/#{tarball}" do
  user "root"
end

link "/etc/init.d/james" do
 to "/opt/#{james_name}/bin/james" 
end 
