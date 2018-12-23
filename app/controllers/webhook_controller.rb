class WebhookController < ApplicationController
  require 'line/bot'

  def show
    meigen = Post.pluck(:content, :image)
    meigen1 = meigen.sample
    {"1" => meigen1[0], "2" => meigen1[1]}
  end

  def meigendayo
      message = {
                "type": "text",
                "text": show["1"]
               }

                 client = Line::Bot::Client.new { |config|
                   config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
                   config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
                }
       response = client.push_message(ENV["LINE_USER_ID"], message)
  end

  def image
    message = {
    "type": "image",
    "originalContentUrl": show["2"],
    "previewImageUrl": show["2"]
}


              client = Line::Bot::Client.new { |config|
                config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
                config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
             }
    response = client.push_message(ENV["LINE_USER_ID"], message)
  end
end
