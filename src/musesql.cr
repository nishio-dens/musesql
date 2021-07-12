require "./core/repl"

module Musesql
  VERSION = "0.1.0"

  def self.main
    repl = Core::Repl.new

    while true
      repl.print_prompt
      user_input = repl.read_input
      exit if user_input.nil?

      puts user_input
    end
  end
end

Musesql.main
