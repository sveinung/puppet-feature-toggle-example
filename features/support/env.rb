ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/routes/application.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.default_driver = :selenium

class FeatureToggleWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  FeatureToggleWorld.new
end
