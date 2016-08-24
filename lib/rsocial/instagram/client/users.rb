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
          executables = {}
          executables[:posts] = "return document.getElementsByClassName('_s53mj')[0].getElementsByClassName('_bkw5z')[0].innerHTML"
          executables[:followers] = "return document.getElementsByClassName('_s53mj')[1].getElementsByClassName('_bkw5z')[0].innerHTML"
          executables[:following] = "return document.getElementsByClassName('_s53mj')[2].getElementsByClassName('_bkw5z')[0].innerHTML"
          executables
        end
      end
    end
  end
end
