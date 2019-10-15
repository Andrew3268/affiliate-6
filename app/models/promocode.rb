class Promocode < ActiveRecord::Base
  extend FriendlyId
  friendly_id :p_title, use: :slugged

  belongs_to :user

  has_attached_file :pimage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pimage, content_type: /\Aimage\/.*\z/

  def self.search_by(search_term)
    where("LOWER(p_title) LIKE :search_term OR LOWER(p_description) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
   end 
end
