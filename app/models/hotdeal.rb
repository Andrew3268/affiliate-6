class Hotdeal < ActiveRecord::Base
  belongs_to :user

  has_attached_file :himage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :himage, content_type: /\Aimage\/.*\z/

  def self.search_by(search_term)
    where("LOWER(h_title) LIKE :search_term OR LOWER(h_description) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
   end 
end
