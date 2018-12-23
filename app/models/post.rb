class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  scope :feed_posts, -> { where(public: true).order(created_at: :desc).limit(4) }
end
