module RSocial
  class Runner < Utils
    def initialize(options={})
      @options = options
    end

    def run(url, injections)
      begin
        @wd = Driver.instance.send( "chrome" )
        @wd.get url
        inject_each do
          injections
        end
      rescue Net::ReadTimeout => e
        {
          :error => e
        }
      end
    end

    private

    def inject_each(&block)
      results = {}
      block.call.each do |key, script|
        response = execute(script)
        response = h2n(response) if keys.include? key
        results[key.to_sym] = response
      end
      results
    end

    def execute(script)
      begin
        @wd.execute_script(script)
      rescue Selenium::WebDriver::Error::JavascriptError
        "Javascript Error"
      rescue Selenium::WebDriver::Error::UnknownError
        "Unknown Error"
      end
    end

    def keys
      [
        :follower_count,
        :following_count,
        :track_count,
        :tweet_count,
        :like_count,
        :subscriber_count,
        :post_count
      ]
    end
  end
end
