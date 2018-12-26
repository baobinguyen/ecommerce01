class OrderItem < ApplicationRecord
  has_many :order, dependent: :destroy
  has_many :product, dependent: :destroy
end
