class Tag < ActiveRecord::Base
  has_and_belongs_to_many :hotdeals
  has_and_belongs_to_many :promocodes
  has_and_belongs_to_many :storedeals

end
