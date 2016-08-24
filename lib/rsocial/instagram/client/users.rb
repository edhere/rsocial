module RSocial
  module Instagram
    class Client
      module Users
        def user(handle)
          run(
            "https://www.instagram.com/#{handle}/",
            user_executables
          ).merge(:handle => handle)
        end

        private

        def user_executables
          {
            :posts => "return document.getElementsByClassName('_s53mj')[0].getElementsByClassName('_bkw5z')[0].innerHTML",
            :followers => "return document.getElementsByClassName('_s53mj')[1].getElementsByClassName('_bkw5z')[0].innerHTML",
            :following => "return document.getElementsByClassName('_s53mj')[2].getElementsByClassName('_bkw5z')[0].innerHTML"
          }
        end
      end
    end
  end
end
