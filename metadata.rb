name              'subversion'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs subversion'
version           '1.3.0'

supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'suse'
supports 'ubuntu'
supports 'windows'

depends 'apache2', '~> 2.0.0'
depends 'windows', '~> 1.10'

recipe 'subversion', 'Includes the client recipe.'
recipe 'subversion::client', 'Subversion Client installs subversion and some extra svn libs'
recipe 'subversion::server', 'Subversion Server (Apache2 mod_dav_svn)'

source_url 'https://github.com/chef-cookbooks/subversion' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/subversion/issues' if respond_to?(:issues_url)

attribute 'subversion/list_parent_path',
          :display_name => 'Subversion List Parent Path?',
          :description  => %q(a choice of "on" or "off".  When set to "on" the list of repositories in the `node['subversion']['repo_dir']` will be indexed at http://<server_name>/svn.  Default is "off"),
          :required     => 'optional',
          :default      => 'off',
          :recipes      => ['subversion::server']
