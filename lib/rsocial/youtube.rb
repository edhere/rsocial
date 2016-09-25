module RSocial
  module Youtube
    def self.client(options={browser:"firefox"})
      Youtube::Client.new(options)
    end
  end
end
