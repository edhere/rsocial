module RSocial
  module Instagram
    class Client < Runner
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Instagram::Client::Users
    end
  end
end
