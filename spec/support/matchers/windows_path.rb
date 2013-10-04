module ChefSpec
  # Custom +windows_path+ matcher
  module Matchers
    define_resource_matchers([:add], [:windows_path], :path)
  end
end
