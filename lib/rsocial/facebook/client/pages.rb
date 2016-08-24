module RSocial
  module Facebook
    class Client
      module Pages
        def page(handle)
          run(
            "https://www.facebook.com/#{handle}/",
            user_executables
          ).merge(:handle => handle)
        end

        private

        def user_executables
          executables = {}
          executables[:followers] = "return document.getElementById('PagesLikesCountDOMID').childNodes[0].textContent"
          executables
        end
      end
    end
  end
end
