name              "subversion"
maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs subversion"
version           "1.0.5"

%w{ redhat centos fedora ubuntu debian windows suse }.each do |os|
  supports os
end

depends "apache2"
depends "windows"

recipe "subversion", "Includes the client recipe."
recipe "subversion::client", "Subversion Client installs subversion and some extra svn libs"
recipe "subversion::server", "Subversion Server (Apache2 mod_dav_svn)"

attribute "subversion/list_parent_path",
  :display_name => "Subversion List Parent Path?",
  :description => "a choice of \"on\" or \"off\".  When set to \"on\" the list of repositories in the `node['subversion']['repo_dir']` will be indexed at http://<server_name>/svn.  Default is \"off\"",
  :required => "optional",
  :default => "off",
  :recipes => ["subversion::server"]