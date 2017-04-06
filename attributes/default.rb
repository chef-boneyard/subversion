#
# Cookbook:: subversion
# Attributes:: server
#
# Copyright:: 2009-2017, Daniel DeLeo
# Copyright:: 2013-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['subversion']['repo_dir'] = '/srv/svn'
default['subversion']['repo_name'] = 'repo'
default['subversion']['server_name'] = 'svn'
default['subversion']['user'] = 'subversion'
default['subversion']['password'] = 'subversion'
default['subversion']['list_parent_path'] = 'off'

# For Windows
default['subversion']['msi_source'] = 'http://downloads.sourceforge.net/project/win32svn/1.8.16/Setup-Subversion-1.8.16.msi'
default['subversion']['msi_checksum'] = 'af798ce1ae635ebcfffef4b4f56a8a7f49e489091eed51a79b37abffc8c987a6'
