class Product < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  validates :title, :manufacturer, :image,:category, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image, allow_blank: true, format: {
                          with: %r{\.(gif|jpg|png)\Z}i,
                          message: 'must be a URL for GIF, JPG or PNG image.'
                      }
end
