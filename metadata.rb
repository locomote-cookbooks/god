maintainer       "Vasily Mikhaylichenko"
maintainer_email "vasily@locomote.com"
license          "Apache 2.0"
description      "God installation"
version          "0.1"

recipe "god",  "Installs god"

%w{ redhat_pkgin redhat centos ubuntu }.each do |os|
  supports os
end

%w{rvm}.each do |d|
  depends d
end
