require 'serverspec'

set :backend, :exec

describe 'subversion::client' do
  describe command('which svn') do
    its(:exit_status) { should eq 0 }
  end
end
