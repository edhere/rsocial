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

        def users_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://soundcloud.com/#{handle}/"
          wd
        end

        private

        def user_injections
          {
            :follower_count => "return document.getElementsByClassName('infoStats__value')[0].textContent",
            :track_count => "return document.getElementsByClassName('infoStats__value')[2].textContent"
          }
        end
      end
    end
  end
end
