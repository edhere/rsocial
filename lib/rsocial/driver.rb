require 'headless'
require 'selenium-webdriver'

module RSocial
  class Driver
    def initialize(options={})
      @options = options
      @wd = Selenium::WebDriver.for :firefox
    end

    def run(url, executables)
      while_headless do
        @wd.navigate.to url
        execute_each do
          executables
        end
      end
    end

    private

    def while_headless
      headless = Headless.new
      headless.start
      yield
    ensure
      puts "destroy"
      headless.destroy
    end

    def execute_each(&block)
      results = {}
      block.call.each do |key, script|
        results[key.to_sym] = execute(script)
      end
      results
    end

    def execute(script)
      begin
        @wd.execute_script(script)
      rescue Selenium::WebDriver::Error::JavascriptError
        "Javascript Error"
      rescue Selenium::WebDriver::Error::UnknownError
        "UnknownError"
      end
    end
  end
end
