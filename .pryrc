if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

unless defined?(FACTORY_BOT_PRY_EXTENSION)
  if defined?(FactoryBot)
    include FactoryBot::Syntax::Methods
  end

  FACTORY_BOT_PRY_EXTENSION = 1
end
