module RSocial
  module Twitter
    class Client
      module Users
        def user(handle)
          run(
            "https://twitter.com/#{handle}/",
            user_injections
          ).merge(:handle => handle)
        end

        def users_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://twitter.com/#{handle}/"
          wd
        end

        private

        def user_injections
          {
            :tweet_count => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[1].getElementsByClassName('ProfileNav-value')[0].textContent",
            :following_count => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[2].getElementsByClassName('ProfileNav-value')[0].textContent",
            :follower_count => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[3].getElementsByClassName('ProfileNav-value')[0].textContent",
            :like_count => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[4].getElementsByClassName('ProfileNav-value')[0].textContent"
          }
        end
      end
    end
  end
end
