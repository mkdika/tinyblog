class PostComment < ApplicationRecord
  belongs_to :post

  validates :name, :comment_body, presence: true
end
