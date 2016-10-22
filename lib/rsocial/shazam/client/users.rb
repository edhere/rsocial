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

        private

        def user_injections
          {
            :followers => "return document.getElementsByClassName('js-followers')[0].textContent"
          }
        end
      end
    end
  end
end
