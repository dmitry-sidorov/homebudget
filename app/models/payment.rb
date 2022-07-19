class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :description, presence: true
  validates :processing_date, presence: true
end
