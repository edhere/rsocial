module RSocial
  module Twitter
    def self.client(options={browser:"firefox"})
      Twitter::Client.new(options)
    end
  end
end
