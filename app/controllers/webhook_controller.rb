class WebhookController < ApplicationController
  require 'line/bot'

  def show
    meigen = Post.pluck(:content, :image)
    meigen1 = meigen.sample
    meigen1[0]
  end

  def humanimage
    meigen = Post.pluck(:content, :image)
    imagedesu = meigen.sample
    imagedesu[1]
  end

  def meigendayo
      message = {
                "type": "text",
                "text": show
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
    "originalContentUrl": humanimage,
    "previewImageUrl": humanimage
}


              client = Line::Bot::Client.new { |config|
                config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
                config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
             }
    response = client.push_message(ENV["LINE_USER_ID"], message)
  end
end
