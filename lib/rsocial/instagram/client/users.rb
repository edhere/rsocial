module RSocial
  module Instagram
    class Client
      module Users
        def user(handle)
          run(
            "https://www.instagram.com/#{handle}/",
            user_injections
          ).merge(:handle => handle)
        end

        def users_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.instagram.com/#{handle}/"
          wd
        end

        private

        def user_injections
          {
            :post_count => "return document.getElementsByClassName('_s53mj')[0].getElementsByClassName('_bkw5z')[0].innerHTML",
            :follower_count => "return document.getElementsByClassName('_s53mj')[1].getElementsByClassName('_bkw5z')[0].innerHTML",
            :following_count => "return document.getElementsByClassName('_s53mj')[2].getElementsByClassName('_bkw5z')[0].innerHTML"
          }
        end
      end
    end
  end
end
