module Cmd
  class Command
    def initialize(name:, config:)
      @name   = name
      @config = config
    end

    def call(**args)
      if block_given?
        yield result args
      else
        result args
      end
    end

    private

    def result(**args)
      errors = []

      begin
        command_result = configured_command.call(args)
      rescue Validators::ValidationError => e
        errors = e.errors
      end

      Result.new result:  command_result || {},
                 errors:  errors,
                 success: errors.empty?
    end

    def configured_command
      command_constant(@name).new(
        repo: @config.commands[@name][:repository])
    end

    def command_constant(value)
      "Commands::#{value.to_s.camelize}".constantize
    end
  end
end
