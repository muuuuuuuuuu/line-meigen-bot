class WebhookController < ApplicationController
  require 'line/bot'

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

  def humanimage
    ichiro = "https://trend-comment.com/wp-content/uploads/2013/08/A5A4A5C1A5EDA1BCA3B2.jpg"
    billgates = "https://upload.wikimedia.org/wikipedia/commons/1/19/Bill_Gates_June_2015.jpg"
    zyobuz = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Steve_Jobs_Headshot_2010-CROP.jpg/1920px-Steve_Jobs_Headshot_2010-CROP.jpg"
    matsu = "https://president.jp/mwimgs/9/e/220/img_9ee60330fa958b23756af44cb7f27cbd41134.jpg"

    post = Post.find([1,2,3,4,5,6,7,8,9,10,11,12,13])
    if show == post
       ichiro
    else
       matsu
    end
  end

  def show
    meigen = Post.pluck(:content)
    meigen.sample
   end
end
