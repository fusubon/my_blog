class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  scope :find_newest_article, -> { order(created_at: :desc).limit(5) }
  validates :title, presence: true, length: { maximum: 50 }
  validates :body,  presence: true, length: { maximum: 2000 }
end
