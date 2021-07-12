module Musesql
  module Core
    class Repl
      def print_prompt
        print "> "
      end

      def read_input
        gets
      end
    end
  end
end
