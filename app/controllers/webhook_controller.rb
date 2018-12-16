class WebhookController < ApplicationController
  require 'line/bot'

def meigendayo
  message = {
            "type": "text",
            "text": "名言"
           }
            client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_SECRET"]
              config.channel_token = ENV["LINE_TOKEN"]

           }
  response = client.push_message(ENV["LINE_ID"], message)
    p response
  end
end
