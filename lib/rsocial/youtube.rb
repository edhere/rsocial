module RSocial
  module Youtube
    def self.client(options={browser:"chrome"})
      Youtube::Client.new(options)
    end
  end
end
