module PrintRubyInfo
  class CLI < Command
    class Help
      class << self
        def info
<<-EOL
Prints out some ruby info
EOL
        end
      end
    end
  end
end
