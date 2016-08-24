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

        def posts(handle)
          run(
            "https://www.facebook.com/#{handle}/posts",
            posts_injections
          ).merge(:handle => handle)
        end

        private

        def page_injections
          {
            :followers => "return document.getElementById('PagesLikesCountDOMID').childNodes[0].textContent"
          }
        end

        def posts_injections
          {
            :last_post_reactions => "return document.getElementsByClassName('_4arz')[0].textContent"
          }
        end
      end
    end
  end
end
