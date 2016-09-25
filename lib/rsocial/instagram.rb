module RSocial
  module Instagram
    def self.client(options={browser:"firefox"})
      Instagram::Client.new(options)
    end
  end
end
