class Gadget < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_many :impressions, :as=>:impressionable
 
   def impression_count
       impressions.size
   end
 
   def unique_impression_count
       # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
       # so getting keys from the hash and calculating the number of keys
       impressions.group(:ip_address).size.keys.length #TESTED
   end

   def self.search_by(search_term)
    where("LOWER(gg_title) LIKE :search_term OR LOWER(gg_intro) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
   end 

end
