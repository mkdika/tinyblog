class Category < ApplicationRecord
  validates :category_name, presence: true
  validates :category_name, uniqueness: true

  rails_admin do
    object_label_method :category_name
  end
end
