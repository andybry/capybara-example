require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.app = Rack::Directory.new '.'
Capybara.default_driver = :selenium