require 'rubygems'
require 'bundler/setup'

require 'capybara/cucumber'
require 'capybara/spec/test_app'

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
#require 'capybara/cucumber'
#require 'capybara-screenshot'
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_wait_time = 10


Capybara.app = TestApp
