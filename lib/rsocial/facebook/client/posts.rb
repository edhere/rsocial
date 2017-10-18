module RSocial
  module Facebook
    class Client
      module Posts
        def post(handle)
          run(
            "https://www.facebook.com/#{handle}/posts",
            posts_injections
          ).merge(:handle => handle)
        end

        def posts_instance(handle)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.facebook.com/#{handle}/posts"
          wd
        end

        private

        def posts_injections
          {
            :last_post_reactions => "return document.getElementsByClassName('_4arz')[0].textContent"
          }
        end
      end
    end
  end
end
