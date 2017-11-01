module RSocial
  module Shazam
    class Client
      module Users
        def user(id)
          run(
            "https://www.shazam.com/artist/#{id}",
            user_injections
          ).merge(:id => id)
        end

        def users_instance(id)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.shazam.com/artist/#{id}"
          wd
        end

        private

        def user_injections
          {
            :follower_count => "return document.getElementsByClassName('js-followers')[0].textContent"
          }
        end
      end
    end
  end
end
