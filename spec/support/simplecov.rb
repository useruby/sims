if ENV['COVERAGE']
  require 'simplecov'
  require 'simplecov-console'

  SimpleCov.start do
    SimpleCov.formatter = SimpleCov::Formatter::Console
  end
end
