class Promocode < ActiveRecord::Base
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
