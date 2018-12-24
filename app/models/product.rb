class Product < ApplicationRecord
  belongs_to :categorie
  has_many :order_items, dependent: :destroy
  has_many :comment_raitings, dependent: :destroy
  validates :name, presence: true,
    length: {maximum: Setting.product.names.max_length}
  validates :description, length: {maximum:
    Setting.product.description.max_length}
end
