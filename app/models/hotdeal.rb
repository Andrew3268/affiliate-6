class Hotdeal < ActiveRecord::Base
  belongs_to :user

  has_attached_file :himage, styles: { medium: "600x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :himage, content_type: /\Aimage\/.*\z/
end
