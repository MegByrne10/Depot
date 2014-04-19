class Product < ActiveRecord::Base
  
  validates :title, uniqueness: true, presence: true
  validates :description, presence: true
  validates :image_url, presence: true, allow_blank: true, format: {
    with:     %r{\.(gif|jpg|png)\Z}i,
    message:  'must be a url for GIF, JPG, of PNG image.'
  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
