class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one_attached :main_img
  has_one_attached :background_img
end
