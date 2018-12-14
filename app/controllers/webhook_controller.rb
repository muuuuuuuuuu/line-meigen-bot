class WebhookController < ApplicationController

def meigendayo
  message = {
            type: 'text',
            text: '名言'
  }
            client = Line::Bot::Client.new { |config|
              config.channel_secret = "<channel secret>"
              config.channel_token = "<channel access token>"
  }
    response = client.push_message("<to>", message)
      p response
  end
end
