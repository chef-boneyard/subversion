name 'subversion'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs subversion'
version '3.0.0'

%w(fedora ubuntu debian redhat centos suse scientific oracle amazon windows).each do |os|
  supports os
end

depends 'apache2', '>= 2.0.0'

source_url 'https://github.com/chef-cookbooks/subversion'
issues_url 'https://github.com/chef-cookbooks/subversion/issues'
chef_version '>= 13.4'
