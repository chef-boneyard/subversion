require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'subversion::client' do
  describe command('which svn') do
    it { should return_exit_status(0) }
  end
end
