default[:james][:version]= "3.0-beta4"
default[:james][:url]          ="http://xenia.sote.hu/ftp/mirrors/www.apache.org/james/apache-james/#{default[:james][:version].sub('-','')}/apache-james-#{node[:james][:version]}-app.tar.gz"
default[:james][:checksum]     ="944d00a4427ac2ff19ab845554bead3904d754aaa3d96aeb4667b9132c5b6d1a"
default[:james][:tarball]      ="#{Chef::Config[:file_cache_path]}/apache-james-#{default[:james][:version]}.tar.gz"  

default[:james][:parent_dir]   ="/opt"
default[:james][:install_dir]  = "#{default[:james][:parent_dir]}/apache-james-#{default[:james][:version]}"  
default[:james][:home]         = "#{default[:james][:parent_dir]}/apache-james"
default[:james][:bin]         = "#{default[:james][:home]}/bin"
  
default[:james][:domain] = "localhost"
  