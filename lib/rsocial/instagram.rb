
module RSocial
  module Instagram
    def self.client(options={})
      Instagram::Client.new(options)
    end
  end
end
