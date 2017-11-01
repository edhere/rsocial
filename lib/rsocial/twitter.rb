module RSocial
  module Twitter
    def self.client(options={browser:"chrome"})
      Twitter::Client.new(options)
    end
  end
end
