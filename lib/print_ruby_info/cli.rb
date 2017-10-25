require "thor"
require "print_ruby_info/cli/help"

module PrintRubyInfo

  class CLI < Command
    class_option :verbose, type: :boolean
    class_option :noop, type: :boolean

    desc "info", "prints out some ruby info"
    long_desc Help.info
    def info
      puts "RUBY_VERSION #{RUBY_VERSION}"
      puts File.expand_path("../../../bin/print_ruby_info", __FILE__)
      puts "LOAD_PATH:"
      puts $:
    end

  end
end
