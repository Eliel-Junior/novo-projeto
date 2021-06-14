require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/dsl'
require_relative 'page_helper.rb'
require 'savon'

World(Pages)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.run_server = false
  Capybara.page.driver.browser.manage.window.maximize  # Maximizando a tela
  config.default_max_wait_time = 120
end