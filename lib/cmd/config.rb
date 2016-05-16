module Cmd
  class Config
    attr_accessor :commands

    def use_repository(*commands, options)
      commands.each do |command|
        @commands[command] = options
      end
    end

    def initialize
      @commands = {}
    end
  end
end
