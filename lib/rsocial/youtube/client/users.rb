module RSocial
  module Youtube
    class Client
      module Users
        def user(handle)
          run(
            "https://www.youtube.com/user/#{handle}/",
            user_injections
          ).merge(:handle => handle)
        end

        def users_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.youtube.com/user/#{handle}/"
          wd
        end

        private

        def user_injections
          {
            :subscriber_count => "return document.getElementsByClassName('yt-subscription-button-subscriber-count-branded-horizontal')[0].textContent"
          }
        end
      end
    end
  end
end
