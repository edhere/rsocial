module RSocial
  module Soundcloud
    def self.client(options={browser:"firefox"})
      Soundcloud::Client.new(options)
    end
  end
end
