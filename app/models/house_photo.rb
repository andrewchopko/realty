class HousePhoto < ActiveRecord::Base

  belongs_to :house

  has_attached_file :image, styles: {}, default_url: "missing.png"
  validates_attachment_presence :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
