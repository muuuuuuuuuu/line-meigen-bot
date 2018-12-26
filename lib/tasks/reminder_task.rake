namespace :reminder_task do

  desc "1日1回の名言"
  task :meigen => :environment do
    webhook = WebhookController.new
    puts webhook.meigendayo
    # puts webhook.image
  end
end
