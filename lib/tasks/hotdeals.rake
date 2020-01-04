namespace :hotdeals do
  desc "Delete records older than 30 Days"
  task auto_delete_hotdeal: :environment do
    Hotdeal.where('created_at < ?', 7.days.ago).each do |hotdeal|
      hotdeal.destroy
    end
  end
end
