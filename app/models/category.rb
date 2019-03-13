class Category < ActiveRecord::Base
  has_many :gadgets
  belongs_to :user
end
