class Promocode < ActiveRecord::Base
  # is_impressionable

  has_many :impressions, :as=>:impressionable
  is_impressionable :counter_cache => true, :unique => true

  # validates :p_promocode, presence: true

  # def impression_count
  #   impressions.size
  # end

  # def unique_impression_count
  #   # impressions.group(:ip_address).size gives => {'127.0.0.1'=>9, '0.0.0.0'=>1}
  #   # so getting keys from the hash and calculating the number of keys
  #   impressions.group(:ip_address).size.keys.length #TESTED
  # end
  
  extend FriendlyId
  friendly_id :p_title, use: :slugged

  belongs_to :user
  has_and_belongs_to_many :tags

  after_create do
      promocode = Promocode.find_by(id: self.id)
      phashtags = self.p_hashtag.scan(/#\w+/)
      phashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          promocode.tags << tag
      end
  end
  
  before_update do
      promocode = Promocode.find_by(id: self.id)
      promocode.tags.clear
      phashtags = self.p_hashtag.scan(/#\w+/)
      phashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          promocode.tags << tag
      end
  end

  has_attached_file :pimage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pimage, content_type: /\Aimage\/.*\z/

  def self.search_by(search_term)
    where("LOWER(p_title) LIKE :search_term OR LOWER(p_description) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
   end 
end
