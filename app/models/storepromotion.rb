class Storepromotion < ActiveRecord::Base
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :spcategory

  def self.search_by(search_term)
    where("LOWER(sp_store_name) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
  end

end
