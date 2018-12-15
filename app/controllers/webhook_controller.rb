class WebhookController < ApplicationController
  require 'line/bot'

#   protect_from_forgery :except => [:meigendayo]
#
# def client
#   @client ||= Line::Bot::Client.new { |config|
#     config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
#     config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
#   }
# end
#
# def meigendayo
#   body = request.body.read
#
#   signature = request.env['HTTP_X_LINE_SIGNATURE']
#   unless client.validate_signature(body, signature)
#     error 400 do 'Bad Request' end
#   end
#
#   events = client.parse_events_from(body)
#
#   events.each { |event|
#      case event
#      when Line::Bot::Event::Message
#        case event.type
#        when Line::Bot::Event::MessageType::Text
#          message = {
#            type: 'text',
#            text: event.message['text']
#          }
#            response = client.push_message(event["user_id"], message)
#            p response
#          end
#        end
#      }
#
#      head :ok
#    end
#  end







def meigendayo
  message = {
            type: 'text',
            text: '名言'
           }
            client = Line::Bot::Client.new { |config|
              config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
              config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
              config.channel_id = ENV["PUSH_TO_ID"]
           }
  response = client.push_message(config.channel_id, message)
    p response
  end
end
