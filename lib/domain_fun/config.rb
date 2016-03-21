module DomainFun
  class Config
    attr_accessor :repository

    def load_commands(*commands, options)
      commands.each do |command|
        klass(command).send :include, DomainFun::YieldOrReturn
      end
    end

    def driver_name= value
      @repository_driver = RepositoryDriver.new(value)
      @repository        = @repository_driver.repository
    end

    private

    def klass command
      "Commands::#{command.to_s.camelize}".constantize
    end
  end
end
