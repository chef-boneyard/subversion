require 'spec_helper'

describe 'subversion::client' do
  context 'on Windows' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2008R2').converge(described_recipe) }

    it 'installs Subversion' do
      expect(chef_run).to install_windows_package('Subversion')
    end

    it 'sets the path' do
      expect(chef_run).to add_windows_path('C:\Program Files (x86)\Subversion\bin')
    end
  end

  context 'on Ubuntu' do
    let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

    it 'installs subversion' do
      expect(chef_run).to install_package('subversion')
    end

    it 'installs subversion-tools' do
      expect(chef_run).to install_package('subversion-tools')
    end

    it 'installs libsvn-perl' do
      expect(chef_run).to install_package('libsvn-perl')
    end
  end
end
