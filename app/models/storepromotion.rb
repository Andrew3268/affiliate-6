class Storepromotion < ActiveRecord::Base
  is_impressionable :counter_cache => true, :unique => true
  belongs_to :spcategory

end
