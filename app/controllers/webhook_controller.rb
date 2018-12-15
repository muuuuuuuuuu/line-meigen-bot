class WebhookController < ApplicationController
  require 'line/bot'

def meigendayo
  message = {
            type: 'text',
            text: '名言'
           }
            client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
           }
  response = client.push_message(["user_id"], message)
    p response
  end
end
