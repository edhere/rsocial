module RSocial
  module Shazam
    class Client < Runner
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Shazam::Client::Users
    end
  end
end
