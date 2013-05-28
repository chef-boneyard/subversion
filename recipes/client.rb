#
# Cookbook Name:: subversion
# Recipe:: default
#
# Copyright 2008-2012, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0c
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform']
when "windows"

  windows_package "Subversion" do
    source node['subversion']['msi_source']
    checksum node['subversion']['msi_checksum']
    action :install
  end

  windows_path 'C:\Program Files (x86)\Subversion\bin' do
    action :add
  end

else

  package "subversion" do
    action :install
  end

  extra_packages = value_for_platform_family(
    "debian" => ["subversion-tools", "libsvn-perl"],
    ["rhel", "fedora", "suse"] => ["subversion-devel", "subversion-perl"]
  )

  extra_packages.each do |pkg|
    package pkg do
      action :install
    end
  end

end
