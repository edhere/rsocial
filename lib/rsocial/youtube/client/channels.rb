module RSocial
  module Youtube
    class Client
      module Channels
        def channel(channel_id)
          run(
            "https://www.youtube.com/channel/#{channel_id}/",
            channel_injections
          ).merge(:handle => handle)
        end

        private

        def channel_injections
          {
            :subscribers => "return document.getElementsByClassName('yt-subscription-button-subscriber-count-branded-horizontal')[0].textContent"
          }
        end
      end
    end
  end
end
