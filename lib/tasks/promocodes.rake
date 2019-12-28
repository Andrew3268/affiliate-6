namespace :promocodes do
  desc "Delete records older than 30 Days"
  task auto_delete_promocode: :environment do
    Promocode.where('created_at < ?', 30.days.ago).each do |promocode|
      promocode.destroy
    end
  end
end
