module RSocial
  module Instagram
    def self.client(options={browser:"chrome"})
      Instagram::Client.new(options)
    end
  end
end
