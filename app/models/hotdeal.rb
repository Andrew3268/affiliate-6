class Hotdeal < ActiveRecord::Base
  is_impressionable

  has_many :impressions, :as=>:impressionable
  is_impressionable :counter_cache => true, :unique => true

  extend FriendlyId
  friendly_id :h_title, use: :slugged

  belongs_to :user
  has_and_belongs_to_many :tags

  after_create do
      hotdeal = Hotdeal.find_by(id: self.id)
      hashtags = self.h_spare_05.scan(/#\w+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          hotdeal.tags << tag
      end
  end
  
  before_update do
      hotdeal = Hotdeal.find_by(id: self.id)
      hotdeal.tags.clear
      hashtags = self.h_spare_05.scan(/#\w+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          hotdeal.tags << tag
      end
  end

  has_attached_file :himage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :himage, content_type: /\Aimage\/.*\z/

  def self.search_by(search_term)
    where("LOWER(h_title) LIKE :search_term OR LOWER(h_description) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
   end 
end
