module RSocial
  module Youtube
    class Client
      module Channels
        def channel(channel_id)
          run(
            "https://www.youtube.com/channel/#{channel_id}/",
            channel_injections
          ).merge(:channel_id => channel_id)
        end

        def channels_instance(channel_id)
          wd = Driver.instance.send( "chrome" )
          wd.get "https://www.youtube.com/channel/#{channel_id}/"
          wd
        end

        private

        def channel_injections
          {
            :subscriber_count => "return document.getElementsByClassName('yt-subscription-button-subscriber-count-branded-horizontal')[0].textContent"
          }
        end
      end
    end
  end
end
