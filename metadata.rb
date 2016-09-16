name 'subversion'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs subversion'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.1.0'

%w(fedora ubuntu debian redhat centos suse scientific oracle amazon windows).each do |os|
  supports os
end

depends 'apache2', '>= 2.0.0'
depends 'windows', '~> 1.44'

recipe 'subversion::default', 'Includes the client recipe.'
recipe 'subversion::client', 'Subversion Client installs subversion and some extra svn libs'
recipe 'subversion::server', 'Subversion Server (Apache2 mod_dav_svn)'

source_url 'https://github.com/chef-cookbooks/subversion'
issues_url 'https://github.com/chef-cookbooks/subversion/issues'

chef_version '>= 12.1'
