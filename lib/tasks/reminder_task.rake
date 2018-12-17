namespace :reminder_task do

  desc "1日1回の名言"
  task :meigen => :environment do
    webhook = WebhookController.new
     webhook.meigendayo
  end
end
