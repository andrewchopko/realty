class House < ActiveRecord::Base

  has_attached_file :image, styles: {}, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :category
  has_many :searches
  
end
