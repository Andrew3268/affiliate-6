class Storepromotion < ActiveRecord::Base

  extend FriendlyId
  friendly_id :sp_title, use: :slugged
  
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :spcategory

  def self.search_by(search_term)
    where("LOWER(sp_store_name) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
  end

end
