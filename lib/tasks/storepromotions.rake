namespace :storepromotions do
  desc "Delete records older than 30 Days"
  task auto_delete_storepromotion: :environment do
    Storepromotion.where('created_at < ?', 30.days.ago).each do |storepromotion|
      storepromotion.destroy
    end
  end
end

