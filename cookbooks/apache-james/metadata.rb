maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures apache-james"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.4"

depends "java" 

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end

recipe "apache-james::default", "Installs and configures Apache James mail server"

