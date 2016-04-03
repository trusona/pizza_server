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

    private

    def klass command
      "Commands::#{command.to_s.camelize}".constantize
    end
  end
end
