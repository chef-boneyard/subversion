require 'spec_helper'

describe 'subversion::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe) }

  it 'includes the client recipe' do
    expect(chef_run).to include_recipe('subversion::client')
  end
end
