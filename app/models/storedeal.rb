class Storedeal < ActiveRecord::Base

  extend FriendlyId
  friendly_id :sd_title, use: :slugged
  
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :sdcategory

  has_and_belongs_to_many :tags

  after_create do
      storedeal = Storedeal.find_by(id: self.id)
      sdhashtags = self.sd_hashtag.scan(/#\w+/)
      sdhashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          storedeal.tags << tag
      end
  end
  
  before_update do
      storedeal = Storedeal.find_by(id: self.id)
      storedeal.tags.clear
      sdhashtags = self.sd_hashtag.scan(/#\w+/)
      sdhashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          storedeal.tags << tag
      end
  end
end
