require 'serverspec'

set :backend, :exec

describe 'subversion::server' do
  describe port(80) do
    it { should be_listening }
  end
end
