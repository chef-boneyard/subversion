require 'berkshelf'
require 'chefspec'

require_relative 'support/matchers/windows_package'
require_relative 'support/matchers/windows_path'

Berkshelf.ui.mute do
  Berkshelf::Berksfile.from_file('Berksfile').install(path: 'vendor/cookbooks')
end
