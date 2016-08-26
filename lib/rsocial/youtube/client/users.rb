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

        private

        def user_injections
          {
            :subscribers => "return document.getElementsByClassName('yt-subscription-button-subscriber-count-branded-horizontal')[0].textContent"
          }
        end
      end
    end
  end
end
