maintainer       "James Moriarty"
maintainer_email "james@locomote.com"
license          "MIT"
description      "Install/Configure MiniDLNA"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

%w(debian ubuntu).each do |os|
  supports os
end
