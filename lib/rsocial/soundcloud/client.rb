module RSocial
  module Soundcloud
    class Client < Runner
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Soundcloud::Client::Users
    end
  end
end
