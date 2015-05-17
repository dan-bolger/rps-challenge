# Generated by cucumber-sinatra. (2015-05-17 17:49:15 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', './app/rock_paper_scissors_web.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScissorsWeb

class RockPaperScissorsWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScissorsWebWorld.new
end