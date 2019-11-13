class Storedeal < ActiveRecord::Base
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :sdcategory
end
