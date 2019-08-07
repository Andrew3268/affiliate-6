class Message < ActiveRecord::Base
  belongs_to :user
  validates :mmail, :presence => true
  # validates :m_spare_02, :presence => true
  validates_format_of :mmail,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  
end
