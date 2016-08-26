module RSocial
  module Youtube
    class Client < Runner
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Youtube::Client::Users
      include Youtube::Client::Channels
    end
  end
end
