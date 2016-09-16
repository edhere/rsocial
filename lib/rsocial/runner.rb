require 'headless'

module RSocial
  class Runner < Utils
    def initialize(options={})
      @wd = Selenium::WebDriver.for :chrome
    end

    def run(url, injections)
      begin
        while_headless do
          @wd.navigate.to url
          inject_each do
            injections
          end
        end
      rescue Net::ReadTimeout => e
        {
          :error => e
        }
      end
    end

    private

    def while_headless
      #Headless::Exception: Xvfb not found on your system
      headless = Headless.new
      headless.start
      yield
    ensure
      headless.destroy
    end

    def inject_each(&block)
      results = {}
      block.call.each do |key, script|
        results[key.to_sym] = execute(script)
      end
      results
    end

    def execute(script)
      begin
        h2n(@wd.execute_script(script))
      rescue Selenium::WebDriver::Error::JavascriptError
        "Javascript Error"
      rescue Selenium::WebDriver::Error::UnknownError
        "Unknown Error"
      end
    end
  end
end
