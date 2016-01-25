require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'nokogumbo'

Capybara.run_server = false
Capybara.javascript_driver = :selenium
Capybara.current_driver =  :selenium
Capybara.default_driver = :selenium
