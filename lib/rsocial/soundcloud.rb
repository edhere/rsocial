module RSocial
  module Soundcloud
    def self.client(options={browser:"chrome"})
      Soundcloud::Client.new(options)
    end
  end
end
