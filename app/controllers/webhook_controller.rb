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
              だから、壁がある時はチャンスだと思っている。by イチロー",
              "少しずつ前に進んでいるという感覚は、人間としてすごく大事。by イチロー",
              "キャンプでいろいろと試すことは
              ムダではありません。ムダなことを考えて
              ムダなことをしないと、伸びません。by イチロー",
              "苦しみを背負いながら、毎日小さなことを積み重ねて、
               記録を達成した。
               苦しいけれど、同時にドキドキ、
               ワクワクしながら挑戦することが、
               勝負の世界の醍醐味だ。by イチロー",
               "自分が全く予想しない球が来たときにどう対応するか。
               それが大事です。
               試合では打ちたい球は来ない。
               好きな球を待っていたのでは
               終わってしまいます。by イチロー"]
       array.sample
   end
end
