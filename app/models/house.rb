class House < ActiveRecord::Base

  belongs_to :category

  has_many :searches

  has_many :house_photos

  accepts_nested_attributes_for :house_photos, allow_destroy: true, reject_if: proc { |t| t['house_photo'].blank? }

end
