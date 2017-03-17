require "byebug"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

Dir[File.dirname(__FILE__) + "/../../library/*.rb"].each { |file| require file }

Capybara.configure do |config|
  config.default_driver = :chrome
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

def desktop(options = {})
  return $desktop if $desktop
  $desktop = Library::Application.new
end
