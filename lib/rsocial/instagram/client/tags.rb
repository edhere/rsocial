module RSocial
  module Instagram
    class Client
      module Tags
        def tag(query)
          run(
            "https://www.instagram.com/explore/tags/#{query}/",
            tag_injections
          ).merge(:query => query)
        end

        def tags_instance(query)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.instagram.com/explore/tags/#{query}/"
          wd
        end

        private

        def tag_injections
          {
            :post_count => "return document.getElementsByClassName('_fd86t')[0].innerHTML",
            :images => "return function() { var urls = []; arr = document.getElementsByClassName('_4rbun'); for (var i=0; i< arr.length; i++) { urls.push({alt: arr[i].childNodes[0].alt, src: arr[i].childNodes[0].currentSrc}) }; return urls}()",
          }
        end
      end
    end
  end
end
