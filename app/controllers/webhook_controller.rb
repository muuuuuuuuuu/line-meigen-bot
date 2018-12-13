class WebhookController < ApplicationController
  require 'line/bot'

  def reminder
    message = {
        type: 'text',
        text: 'hello'
    }
    client = Line::Bot::Client.new { |config|
      config.channel_secret = "<channel secret>"
      config.channel_token = "<channel access token>"
    }
    response = client.push_message("<to>", message)
   end
end
