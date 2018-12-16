class WebhookController < ApplicationController
  require 'line/bot'

def meigendayo
  message = {
            "type": "text",
            "text": "名言"
           }
            client = Line::Bot::Client.new { |config|
              config.channel_secret = "LINE_CHANNEL_SECRET"
              config.channel_token = "LINE_CHANNEL_TOKEN"

           }
  response = client.push_message("LINE_CHANNEL_ID", message)
    p response
  end
end
