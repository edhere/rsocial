module RSocial
  module Shazam
    def self.client(options={browser:"chrome"})
      Shazam::Client.new(options)
    end
  end
end
