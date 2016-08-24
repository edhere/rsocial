
module RSocial
  module Facebook
    def self.client(options={})
      Facebook::Client.new(options)
    end
  end
end
