class Article < ApplicationRecord
  validates :name, presence: true
  validates :comments, presence: true
end
