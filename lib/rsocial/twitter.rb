module RSocial
  module Twitter
    def self.client(options={})
      Twitter::Client.new(options)
    end
  end
end
