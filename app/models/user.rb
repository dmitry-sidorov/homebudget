class User < ApplicationRecord
  has_many :payments

  validates :name, presense: true
  validates :email, presense: true
  validates :password, presense: true, length { minimum: 8 }
end
