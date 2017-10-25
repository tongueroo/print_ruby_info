require "thor"

module PrintRubyInfo
  class Command < Thor
    class << self
      def dispatch(m, args, options, config)
        # Allow calling for help via:
        #   print_ruby_info command help
        #   print_ruby_info command -h
        #   print_ruby_info command --help
        #   print_ruby_info command -D
        #
        # as well thor's normal way:
        #
        #   print_ruby_info help command
        help_flags = Thor::HELP_MAPPINGS + ["help"]
        if args.length > 1 && !(args & help_flags).empty?
          args -= help_flags
          args.insert(-2, "help")
        end
        super
      end
    end
  end
end
