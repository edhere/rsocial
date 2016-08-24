require 'singleton'
require 'selenium-webdriver'

module RSocial
  class Driver
    include Singleton
    def firefox
      @firefox ||= Selenium::WebDriver.for :firefox
    end
    def chrome
      @chrome ||= Selenium::WebDriver.for :chrome
    end
  end
end
