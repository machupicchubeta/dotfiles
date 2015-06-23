if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

unless defined?(FACTORY_GIRL_PRY_EXTENSION)
  if defined?(FactoryGirl)
    include FactoryGirl::Syntax::Methods
  end

  FACTORY_GIRL_PRY_EXTENSION = 1
end

