module RSocial
  module Twitter
    class Client < Runner
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Twitter::Client::Users
    end
  end
end
