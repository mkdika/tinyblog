class Tag < ApplicationRecord
  validates :tag_name, presence: true
  validates :tag_name, uniqueness: true

  rails_admin do
    object_label_method :tag_name
  end
end
