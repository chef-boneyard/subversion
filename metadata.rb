name              'subversion'
maintainer        'Opscode, Inc.'
maintainer_email  'cookbooks@opscode.com'
license           'Apache 2.0'
description       'Installs subversion'
version           '1.1.2'

supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'suse'
supports 'ubuntu'
supports 'windows'

depends 'apache2', '~> 1.7'
depends 'windows', '~> 1.10'

recipe 'subversion', 'Includes the client recipe.'
recipe 'subversion::client', 'Subversion Client installs subversion and some extra svn libs'
recipe 'subversion::server', 'Subversion Server (Apache2 mod_dav_svn)'

attribute 'subversion/list_parent_path',
          :display_name => 'Subversion List Parent Path?',
          :description  => %q(a choice of "on" or "off".  When set to "on" the list of repositories in the `node['subversion']['repo_dir']` will be indexed at http://<server_name>/svn.  Default is "off"),
          :required     => 'optional',
          :default      => 'off',
          :recipes      => ['subversion::server']
