class User < ApplicationRecord
  has_many :payments

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
