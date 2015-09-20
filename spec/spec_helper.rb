require 'chefspec'
require 'chefspec/berkshelf'

Berkshelf.ui.mute do
  Berkshelf::Berksfile.from_file('Berksfile').install
end
