default[:jetty][:version]      = "6.1.26"
default[:jetty][:url]          ="http://dl.dropbox.com/u/73252658/java/jetty-#{default[:jetty][:version]}.tar.gz"
default[:jetty][:checksum]     ="19c2d2b1cf6accb3de2ad2887388a5f5a5e8091a042238f7f6024cfe62a61e49"
default[:jetty][:tarball]      ="#{Chef::Config[:file_cache_path]}/jetty-#{default[:jetty][:version]}.tar.gz"
  
default[:jetty][:user]         = "jetty"
default[:jetty][:group]        = "jetty"
  
default[:jetty][:parent_dir]   ="/opt"
default[:jetty][:install_dir]  = "#{default[:jetty][:parent_dir]}/jetty-#{default[:jetty][:version]}"  
default[:jetty][:home]         = "#{default[:jetty][:parent_dir]}/jetty"
default[:jetty][:webapp_dir]   = "#{default[:jetty][:install_dir]}/webapps"
default[:jetty][:context_dir]  = "#{default[:jetty][:install_dir]}/contexts"

  