subversion Cookbook CHANGELOG
=============================
This file is used to list changes made in each version of the subversion cookbook.

v1.3.1 (9-21-2015)
------
- Changed the apache2 cookbook dependency from '~> 2.0.0' to '>= 2.0.0' so that the 3.X release can be used
- Updated Travis config to test on modern Ruby releases and use the container infrastructure for faster tests
- Updated Berskfile to the 3.X format
- Updated Chefspecs to the 4.X format
- Added source_url and issues_url metadata for Supermarket
- Added contributing, testing, and maintainers documentation
- Updated all development dependencies in the Gemfile to the latest
- Added a Rakefile for simplified testing
- Added Oracle Linux and Amazon Linux to the Readme and metadata
- Added CentOS to the Kitchen CI config
- Added Chef standard .gitignore and chefignore files

v1.3.0
------
- Updating test harness
- Upgrading to Apache2 2.0.x series to support Ubuntu 14.04

v1.1.2
------
### Improvement
- **[COOK-3868](https://tickets.chef.io/browse/COOK-3868)** - add mod_dav to subversion cookbooks


v1.1.0
------
### Improvement
- **[COOK-3692](https://tickets.chef.io/browse/COOK-3692)** - Use SVNParentPath for Server and expose SVNListParentPath as attribute


v1.0.4
------
### Improvement
- **[COOK-3061](https://tickets.chef.io/browse/COOK-3061)** - Clean up case platform

v1.0.2
------
- Resolves foodcritic warnings
- [COOK-1513] - support SUSE SLES

v1.0.0
------
- [COOK-810] - add Windows platform support

v0.8.3
------
- Current public release
