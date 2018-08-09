class Tag < ApplicationRecord
  validates :tag_name, presence: true
  validates :tag_name, uniqueness: true
end
