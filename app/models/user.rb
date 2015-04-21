class User < ActiveRecord::Base

  has_many :products
  validates :name, presence: true, length: { maximum: 50 }

  has_secure_password
  validates :password, length: { minimum: 6 }
end
