class WebhookController < ApplicationController
  require 'line/bot'

  # def show
  #   number = (1..50).to_a
  #   number2 = number.sample
  #   meigen = Post.pluck(:content, :image)
  #   meigen2 = meigen[number2]
  #   {"1" => meigen2[0], "2" => meigen2[1]}
  # end

  def meigendayo
    number = (1..50).to_a
    number2 = number.sample
    meigen = Post.pluck(:content, :image)
    meigen2 = meigen[number2]
    hash = {"1" => meigen2[0], "2" => meigen2[1]}

      message = {
                "type": "text",
                "text": hash["1"]
               }

                 client = Line::Bot::Client.new { |config|
                   config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
                   config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
                }
       response = client.push_message(ENV["LINE_USER_ID"], message)
  # end
  #
  # def image
    message = {
    "type": "image",
    "originalContentUrl": hash["2"],
    "previewImageUrl": hash["2"]
}


              client = Line::Bot::Client.new { |config|
                config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
                config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
             }
    response = client.push_message(ENV["LINE_USER_ID"], message)
  end
end
