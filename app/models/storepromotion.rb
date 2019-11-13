class Storepromotion < ActiveRecord::Base
  has_many :impressions, :as=>:impressionable
  is_impressionable :counter_cache => true, :unique => true

  belongs_to :spcategory

end
