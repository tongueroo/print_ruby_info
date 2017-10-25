$:.unshift(File.expand_path("../", __FILE__))
require "print_ruby_info/version"

module PrintRubyInfo
  autoload :Command, "print_ruby_info/command"
  autoload :CLI, "print_ruby_info/cli"
end
