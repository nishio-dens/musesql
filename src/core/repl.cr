class Musesql::Core::Repl
  def print_prompt
    print "> "
  end

  def read_input : String?
    gets
  end

  def self.main
    repl = self.new

    while true
      repl.print_prompt
      user_input = repl.read_input
      exit if user_input.nil?

      if user_input.downcase == ".exit"
        exit
      else
        puts "Unrecognized command %s" % user_input
      end
    end
  end
end
