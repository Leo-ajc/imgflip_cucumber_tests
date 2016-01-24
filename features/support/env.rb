require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'nokogumbo'
require 'capybara/poltergeist'

Capybara.run_server = false
Capybara.javascript_driver = :selenium
Capybara.current_driver =  :selenium
Capybara.default_driver = :selenium

# Capybara.javascript_driver = :poltergeist
# Capybara.current_driver =  :poltergeist
# Capybara.default_driver = :poltergeist
# 
# options = {js_errors: false, default_wait_time: 30, timeout: 90}
# Capybara.register_driver :poltergeist do |app|
#   Capybara::Poltergeist::Driver.new(app, options)
# end

#Capybara.app_host = 'https://imgflip.com/memegenerator'

