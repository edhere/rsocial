module RSocial
  module Facebook
    class Client
      module Pages
        def page(handle)
          run(
            "https://www.facebook.com/#{handle}/",
            page_executables
          ).merge(:handle => handle)
        end

        private

        def page_executables
          {
            :followers => "return document.getElementById('PagesLikesCountDOMID').childNodes[0].textContent"
          }
        end
      end
    end
  end
end
