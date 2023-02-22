class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w(Chinese Italian Japanese French Belgian).freeze
  validates :category, inclusion: { in: CATEGORY }
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
end
