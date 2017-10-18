module RSocial
  module Facebook
    class Client
      module Pages
        def page(handle)
          run(
            "https://www.facebook.com/#{handle}/",
            page_injections
          ).merge(:handle => handle)
        end

        def pages_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.facebook.com/#{handle}/"
          wd
        end

        private

        def page_injections
          {
            :follower_count => "return document.getElementById('PagesLikesCountDOMID').childNodes[0].textContent"
          }
        end

      end
    end
  end
end
