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

  def show
    array = ["壁というのは、できる人にしかやってこない。
      超えられる可能性がある人にしかやってこない。
      だから、壁がある時はチャンスだと思っている。",
      "少しずつ前に進んでいるという感覚は、人間としてすごく大事。",
      "キャンプでいろいろと試すことは、
      ムダではありません。ムダなことを考えて,
      ムダなことをしないと、伸びません。"]
     puts array.sample
   end
end
