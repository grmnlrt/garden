class Plant < ApplicationRecord
  belongs_to :park
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true
end
