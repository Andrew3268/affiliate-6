namespace :hotdeals do
  desc "Delete records older than 7 Days"
  task auto_delete_hotdeal: :environment do
    Hotdeal.where('created_at < ?', 5.minutes.ago).each do |hotdeal|
      hotdeal.destroy
    end
  end
end
