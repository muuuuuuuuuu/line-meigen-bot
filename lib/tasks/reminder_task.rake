namespace :reminder_task do

  # desc "1日1回の名言"
  # task :meigen do
  #   a = ["努力", "勉強", "継続"]
  #   puts a
  #   努力
  #   勉強
  #   継続
  # end
  desc "1日1回の名言"
  task :meigen do
    webhook = WebhookController.new
    puts webhook.meigendayo
  end
end
