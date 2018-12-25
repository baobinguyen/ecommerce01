class User < ApplicationRecord
  has_many :suggests, dependent: :destroy
  has_many :comment_raitings, dependent: :destroy
  has_many :orders, dependent: :destroy
  validates :name, presence: true,
    length: {maximum: Settings.user.names.max_length}
  validates :email, presence: true,
    length: {maximum: Settings.user.email.max_length},
    uniqueness: {case_sensitive: false}
end
