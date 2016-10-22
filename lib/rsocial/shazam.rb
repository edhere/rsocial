module RSocial
  module Shazam
    def self.client(options={browser:"firefox"})
      Shazam::Client.new(options)
    end
  end
end
