#
# Cookbook Name:: oracle-java
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository "webupd8team-java" do
  uri "http://ppa.launchpad.net/webupd8team/java/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "EEA14886"
end

package "oracle-java7-installer" do
  action :install
end 
