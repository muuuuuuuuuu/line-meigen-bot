namespace :reminder_task do
  webhook_controller = WebhookController.new
  webhook_controller.reminder

  desc "1日一回の名言"
  task :meigen do
    p response
  end
end
