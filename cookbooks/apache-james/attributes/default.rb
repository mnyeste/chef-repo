default[:james][:version]=     "3.0-beta4"
default[:james][:home]=        "apache-james-#{default[:james][:version]}"
default[:james][:tarball]=     "#{default[:james][:home]}-app.tar.gz"
default[:james][:downloadurl]= "http://xenia.sote.hu/ftp/mirrors/www.apache.org/james/apache-james/#{default[:james][:version].sub("-","")}/#{default[:james][:tarball]}"
