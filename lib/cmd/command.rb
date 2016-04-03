module Cmd
  class Command
    def initialize(name:, config:)
      @name = name
      @config = config
    end

    def call(**args)
      result = Result.new(result: result(args), errors: [], success: true)
      yield result if block_given?
      result
    end

    private

    def result(**args)
      if args.present?
        domain_command.call args
      else
        domain_command.call if !args.present?
      end

    end

    def domain_command
      command_name(@name).new(repo: @config.commands[@name][:repository])
    end

    def command_name(value)
      "Commands::#{value.to_s.camelize}".constantize
    end
  end
end
