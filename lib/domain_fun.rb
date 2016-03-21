module DomainFun
  @config = Config.new

  def self.config
    yield @config
  end

  # DomainFun[:create_pizza].run
  def self.[] value
    command(value).new(repo: @config.repository)
  end

  def self.command(value)
    "Commands::#{value.to_s.camelize}".constantize
  end
end
