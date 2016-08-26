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

        private

        def user_injections
          {
            :tweets => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[1].getElementsByClassName('ProfileNav-value')[0].textContent",
            :following => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[2].getElementsByClassName('ProfileNav-value')[0].textContent",
            :followers => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[3].getElementsByClassName('ProfileNav-value')[0].textContent",
            :likes => "return document.getElementsByClassName('ProfileNav-list')[0].childNodes[4].getElementsByClassName('ProfileNav-value')[0].textContent"
          }
        end
      end
    end
  end
end
