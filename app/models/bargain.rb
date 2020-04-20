class Bargain < ActiveRecord::Base
  belongs_to :barcategory

  extend FriendlyId
  friendly_id :bar_title, use: :slugged

  def self.search_by(search_term)
    where("LOWER(bar_title) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
  end

end
