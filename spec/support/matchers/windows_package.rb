module ChefSpec
  # Custom +windows_package+ matcher
  module Matchers
    define_resource_matchers([:install], [:windows_package], :package_name)
  end
end
