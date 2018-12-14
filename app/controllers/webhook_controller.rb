class WebhookController < ApplicationController
  require 'line/bot'

def meigendayo
  message = {
            type: 'text',
            text: '名言'
           }
            client = Line::Bot::Client.new { |config|
                                         # ↓ここと
              config.channel_secret = "<channel secret>"
                                          # ↓ここ
              config.channel_token = "<channel access token>"
           }
                                  # ↓ここがわかりません
  response = client.push_message("<to>", message)
    p response
  end
end
