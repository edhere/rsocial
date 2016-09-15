require 'singleton'
require 'selenium-webdriver'

module RSocial
  class Driver
    include Singleton
    def firefox
      #require 'selenium-webdriver'
      #Selenium::WebDriver::Firefox::Binary.path='/usr/bin/firefox/firefox-bin'
      #Selenium::WebDriver::Error::WebDriverError: Could not find Firefox binary (os=linux). Make sure Firefox is installed or set the path manually with Selenium::WebDriver::Firefox::Binary.path=
      @firefox ||= Selenium::WebDriver.for :firefox
    end
    def chrome
      @chrome ||= Selenium::WebDriver.for :chrome
    end
  end
end
