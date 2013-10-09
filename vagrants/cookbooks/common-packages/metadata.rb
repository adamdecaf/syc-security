name             "common-packages"
maintainer       "Adam Shannon"
maintainer_email "adam@ashannon.us"
license          "Apache 2.0"
description      "Installs/Configures common-packages"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe           "sockstat", "Installs/Configures common-packages"

%w{ centos debian ubuntu }.each do |os|
  supports os
end
