module RSocial
  module Soundcloud
    class Client
      module Users
        def user(handle)
          run(
            "https://soundcloud.com/#{handle}/",
            user_injections
          ).merge(:handle => handle)
        end

        private

        def user_injections
          {
            :followers => "return document.getElementsByClassName('infoStats__value')[0].textContent",
            :tracks => "return document.getElementsByClassName('infoStats__value')[2].textContent"
          }
        end
      end
    end
  end
end
