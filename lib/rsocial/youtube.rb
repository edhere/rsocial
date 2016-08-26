module RSocial
  module Youtube
    def self.client(options={})
      Youtube::Client.new(options)
    end
  end
end
