class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gadgets
  has_many :recommends
  has_many :categories
  has_many :messages
  has_many :hotdeals
  has_many :promocodes

end
