namespace :promocodes do
  desc "Delete records older than 15 Days"
  task auto_delete_promocode: :environment do
    Promocode.where('created_at < ?', 15.days.ago).each do |promocode|
      promocode.destroy
    end
  end
end
