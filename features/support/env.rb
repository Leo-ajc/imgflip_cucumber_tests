require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'

Capybara.run_server = false
Capybara.javascript_driver = :selenium
Capybara.current_driver =  :selenium
Capybara.default_driver = :selenium

Capybara.app_host = 'https://imgflip.com/memegenerator'
