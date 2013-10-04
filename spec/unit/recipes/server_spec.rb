require 'spec_helper'

describe 'subversion::server' do
  let(:chef_run) { ChefSpec::ChefRunner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

  it 'includes mod_dav_svn' do
    expect(chef_run).to include_recipe('apache2::mod_dav_svn')
  end

  it 'includes the client recipe' do
    expect(chef_run).to include_recipe('subversion::client')
  end

  it 'creates the repo_dir' do
    directory = chef_run.directory('/srv/svn')
    expect(directory).to be
    expect(directory.user).to eq('www-data')
    expect(directory.group).to eq('www-data')
    expect(directory.mode).to eq('0755')
    expect(directory.recursive).to be_true
  end
end
