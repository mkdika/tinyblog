class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tag
  has_many :post_comment, dependent: :destroy

  validates :title, :post_body, :release, presence: true
  validates :permalink, uniqueness: true
end
