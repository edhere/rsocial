module RSocial
  module Facebook
    def self.client(options={browser:"firefox"})
      Facebook::Client.new(options)
    end
  end
end
