class Song < ApplicationRecord
  validates :name, presence: true
  validates :artist, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
end
