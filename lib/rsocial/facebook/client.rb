module RSocial
  module Facebook
    class Client < Driver
      Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
      include Facebook::Client::Pages
    end
  end
end
