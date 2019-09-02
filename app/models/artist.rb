class Artist < ApplicationRecord
  has_many :song
  has_one_attached :main_img
  has_one_attached :background_img
end
