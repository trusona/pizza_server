module DomainFun
  class Config
    attr_accessor :commands
    def load_commands(*commands, options)
      commands.each do |command|
        klass(command).send :include, DomainFun::YieldOrReturn
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
