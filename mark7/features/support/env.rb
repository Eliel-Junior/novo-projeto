require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

# Capybara => Selenium => API do WebDriver => chromedriver.exe
#     => Chrome