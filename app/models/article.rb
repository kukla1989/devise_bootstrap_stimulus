class Article < ApplicationRecord
  validates :title, presence: true, length: {maximum: 100}
  validates :content, presence: true, length: {maximum: 10000}
  default_scope -> { order(created_at: :desc)}
end
