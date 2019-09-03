class Recommend < ActiveRecord::Base
  extend FriendlyId
  friendly_id :re_title, use: :slugged
  
  belongs_to :user
end
