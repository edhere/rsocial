module RSocial
  module Facebook
    def self.client(options={browser:"chrome"})
      Facebook::Client.new(options)
    end
  end
end
